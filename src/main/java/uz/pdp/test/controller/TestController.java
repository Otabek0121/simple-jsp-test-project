package uz.pdp.test.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import uz.pdp.test.entity.Student;
import uz.pdp.test.payload.StudentDTO;
import uz.pdp.test.repository.StudentRepository;

import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/test")
@RequiredArgsConstructor
public class TestController {

    private final StudentRepository studentRepository;

    @GetMapping
    public String test() {
        System.out.println();
        return "student";
    }

    @DeleteMapping
    public String delete(@RequestBody StudentDTO studentDTO) {

        List<UUID> ids = studentDTO.getIds();

        studentRepository.deleteAllById(studentDTO.getIds());

        return "redirect:/test/students";
    }

    @GetMapping("/students")
    public String getAll(Model model) {

        List<Student> students = studentRepository.findAll();

        model.addAttribute("students", students);

        return "students";
    }
    @PostMapping("/add")
    public String add(@RequestParam String fullName, MultipartFile file) {

        System.out.println();


        return "";
    }

}
