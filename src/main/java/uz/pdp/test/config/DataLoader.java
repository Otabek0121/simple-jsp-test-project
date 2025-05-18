package uz.pdp.test.config;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import uz.pdp.test.entity.Student;
import uz.pdp.test.repository.StudentRepository;

@Component
@RequiredArgsConstructor
public class DataLoader implements CommandLineRunner {

    private final StudentRepository studentRepository;

    @Override
    public void run(String... args) throws Exception {

        Student student1 = new Student();
        student1.setFirstname("John");
        student1.setLastname("Doe");

        Student student2 = new Student();
        student2.setFirstname("Jane");
        student2.setLastname("Smith");

        Student student3 = new Student();
        student3.setFirstname("Michael");
        student3.setLastname("Johnson");

        Student student4 = new Student();
        student4.setFirstname("Emily");
        student4.setLastname("Davis");

        Student student5 = new Student();
        student5.setFirstname("David");
        student5.setLastname("Wilson");

        Student student6 = new Student();
        student6.setFirstname("Sarah");
        student6.setLastname("Brown");

        Student student7 = new Student();
        student7.setFirstname("Chris");
        student7.setLastname("Taylor");

        Student student8 = new Student();
        student8.setFirstname("Emma");
        student8.setLastname("Anderson");

        Student student9 = new Student();
        student9.setFirstname("Daniel");
        student9.setLastname("Thomas");

        Student student10 = new Student();
        student10.setFirstname("Olivia");
        student10.setLastname("White");


        studentRepository.save(student1);
        studentRepository.save(student2);
        studentRepository.save(student3);
        studentRepository.save(student4);
        studentRepository.save(student5);
        studentRepository.save(student6);
        studentRepository.save(student7);
        studentRepository.save(student8);
        studentRepository.save(student9);
        studentRepository.save(student10);

    }
}
