package com.berrypay.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.berrypay.java.exception.ResourceNotFoundException;
import com.berrypay.java.model.Berry;
import com.berrypay.java.repository.BerryRepository;

import javax.validation.Valid;
import java.util.List;

/**
 * Commentar by : Die
 */
@RestController
@RequestMapping("/api")
public class BerryController {

    @Autowired
    BerryRepository noteRepository;

    @GetMapping("/notes")
    public List<Berry> getAllNotes() {
        return noteRepository.findAll();
    }

    @PostMapping("/notes")
    public Berry createNote(@Valid @RequestBody Berry note) {
        return noteRepository.save(note);
    }

    @GetMapping("/notes/{id}")
    public Berry getNoteById(@PathVariable(value = "id") Long noteId) {
        return noteRepository.findById(noteId)
                .orElseThrow(() -> new ResourceNotFoundException("Note", "id", noteId));
    }

    @PutMapping("/notes/{id}")
    public Berry updateNote(@PathVariable(value = "id") Long noteId,
                                           @Valid @RequestBody Berry noteDetails) {

        Berry note = noteRepository.findById(noteId)
                .orElseThrow(() -> new ResourceNotFoundException("Note", "id", noteId));

        note.setTitle(noteDetails.getTitle());
        note.setContent(noteDetails.getContent());

        Berry updatedNote = noteRepository.save(note);
        return updatedNote;
    }

    @DeleteMapping("/notes/{id}")
    public ResponseEntity<?> deleteNote(@PathVariable(value = "id") Long noteId) {
        Berry note = noteRepository.findById(noteId)
                .orElseThrow(() -> new ResourceNotFoundException("Note", "id", noteId));

        noteRepository.delete(note);

        return ResponseEntity.ok().build();
    }
}
