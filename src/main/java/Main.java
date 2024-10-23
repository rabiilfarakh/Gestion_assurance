//package com.example;
//
//import com.example.entity.User;
//import com.example.repository.UserRepository;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//import org.springframework.transaction.annotation.Transactional;
//
//public class Main {
//
//    @Transactional
//    public static void main(String[] args) {
//        // Charger le contexte Spring
//        ApplicationContext context = new ClassPathXmlApplicationContext("src/main/webapp/WEB-INF/applicationContext.xml");
//
//        // Obtenir le repository UserRepository à partir du contexte Spring
//        UserRepository userRepository = context.getBean(UserRepository.class);
//
//        // Création d'un nouvel utilisateur
//        User user = new User();
//        user.setName("John Doe");
//        user.setEmail("johndoe@example.com");
//
//        // Sauvegarde de l'utilisateur
//        userRepository.save(user);
//        System.out.println("User saved with ID: " + user.getId());
//
////        // Lecture de l'utilisateur par ID
////        UUID userId = user.getId();
////        User foundUser = userRepository.findById(userId).orElse(null);
////        if (foundUser != null) {
////            System.out.println("User found: " + foundUser.getName() + ", Email: " + foundUser.getEmail());
////        }
////
////        // Mise à jour de l'utilisateur
////        foundUser.setEmail("newemail@example.com");
////        userRepository.save(foundUser);
////        System.out.println("User updated: " + foundUser.getEmail());
////
////        // Suppression de l'utilisateur
////        userRepository.deleteById(userId);
////        System.out.println("User deleted with ID: " + userId);
////
////        // Vérification que l'utilisateur a bien été supprimé
////        boolean userExists = userRepository.existsById(userId);
////        System.out.println("User exists after deletion? " + userExists);
//    }
//}
