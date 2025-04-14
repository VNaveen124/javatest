import java.util.Scanner;

public class LoginPage {
    public static void main(String[] args) {
        // Predefined username and password
        String predefinedUsername = "admin";
        String predefinedPassword = "password123";

        // Create a Scanner object for user input
        Scanner scanner = new Scanner(System.in);

        // Prompt the user for username
        System.out.print("Enter your username: ");
        String username = scanner.nextLine();

        // Prompt the user for password
        System.out.print("Enter your password: ");
        String password = scanner.nextLine();

        // Check if the input matches the predefined credentials
        if (username.equals(predefinedUsername) && password.equals(predefinedPassword)) {
            System.out.println("Login successful! Welcome, " + username + "!");
        } else {
            System.out.println("Invalid username or password. Please try again.");
        }

        // Close the scanner
        scanner.close();
    }
}
