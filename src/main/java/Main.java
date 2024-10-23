import com.example.entity.User;
import com.example.repository.UserRepository;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

public class Main {

    @Transactional
    public static void main(String[] args) {
        // Charger le contexte Spring
        ApplicationContext context = new ClassPathXmlApplicationContext("src/main/webapp/WEB-INF/applicationContext.xml");


        // Obtenir le repository UserRepository à partir du contexte Spring
        UserRepository userRepository = context.getBean(UserRepository.class);

        // Tester la connexion en créant un nouvel utilisateur
        User user = new User();
        user.setName("Test User");
        user.setEmail("testuser@example.com");

        // Sauvegarde de l'utilisateur
        userRepository.save(user);
        System.out.println("User saved with ID: " + user.getId());
    }
}
