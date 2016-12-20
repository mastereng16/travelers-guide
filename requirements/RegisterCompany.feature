Feature: Εγγραφή νέας επιχείρησης στο σύστημα
  Σαν Επαγγελματίας
  Για να προσθέσω την επιχείρησή μου στο σύστημα
  Θέλω να δημιουργήσω τη σελίδα της επιχείρησής μου
  
Scenario: Register Company
  Given ότι είμαι στην αρχική σελίδα
  When κάνω κλικ στο κουμπί "Register"
  Then εμφανίζεται το μύνημα "Θέλετε να κάνετε εγγραφή σαν Χρήστης ή σαν Επαγγελματίας"
  When κάνω κλικ στην επιλογή "Επαγγελματίας" 
  Then θα πρέπει να οδηγηθώ στη σελίδα "Εγγραφή Επαγγελματία"
  When συμπληρώσω "Username", "Password","Όνομα εταιρίας", "Πληροφορίες εταιρίας","Τηλέφωνο", "Ώρες επικοινωνίας",
  "Διεύθυνση", "Email"
  And κάνω κλικ στο πεδίο "Φωτογραφία Profil"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω "φωτογραφία Profil" απο τον τοπικό μου δίσκο
  When επιλέξω την φωτογραφία που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στην σελίδα "Εγγραφή Επαγγελματία"
  When κάνω κλικ στο πεδίο "Φωτογραφίες"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω φωτογραφίες τις επιχείρησης απο τον τοπικό μου δίσκο
  When επιλέξω τις φωτογραφίες που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στη σελίδα "Εγγραφή Επαγγελματία"
  When κάνω κλικ στο κουτάκι "Αποδέχομαι τους όρους χρήσης και πολιτικής απορρήτου"
  And κάνω κλικ στο κουμπί "Εγγραφή"
  Then θα πρέπει να μου έρθει email επιβεβαίωσης
  And θα πρέπει να οδηγηθώ στην αρχική σελίδα


Scenario: Register Company fail
  Given ότι είμαι στην αρχική σελίδα
  When κάνω κλικ στο κουμπί "Register"
  Then εμφανίζεται το μύνημα "Θέλετε να κάνετε εγγραφή σαν Χρήστης ή σαν Επαγγελματίας"
  When κάνω κλικ στην επιλογή "Επαγγελματίας" 
  Then θα πρέπει να οδηγηθώ στη σελίδα "Εγγραφή Επαγγελματία"
  When συμπληρώσω "Username", "Password","Όνομα εταιρίας", "Πληροφορίες εταιρίας","Τηλέφωνο", "Ώρες επικοινωνίας",
  "Διεύθυνση", "Email"
  And κάνω κλικ στο πεδίο "Φωτογραφία Profil"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω "φωτογραφία Profil" απο τον τοπικό μου δίσκο
  When επιλέξω την φωτογραφία που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στην σελίδα "Εγγραφή Επαγγελματία"
  When κάνω κλικ στο πεδίο "Φωτογραφίες"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω φωτογραφίες τις επιχείρησης απο τον τοπικό μου δίσκο
  When επιλέξω τις φωτογραφίες που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στη σελίδα "Εγγραφή Επαγγελματία"
  And κάνω κλικ στο κουτάκι "Αποδέχομαι τους όρους χρήσης και πολιτικής απορρήτου"
  And κάνω κλικ στο κουμπί "Εγγραφή"
  Then θα πρέπει να εμφανιστεί ένα μύνημα "Το username που εισάγατε χρησιμοποιείται"
  When συμπληρώσω νέο "Username"
  And κάνω κλικ στο κουμπί "Εγγραφή"
  Then θα πρέπει να μου έρθει email επιβεβαίωσης
  And θα πρέπει να οδηγηθώ στην αρχική σελίδα

Scenario: Register fail 2 
  Given ότι είμαι στην αρχική σελίδα
  When κάνω κλικ στο κουμπί "Register"
  Then εμφανίζεται το μύνημα "Θέλετε να κάνετε εγγραφή σαν Χρήστης ή σαν Επαγγελματίας"
  When κάνω κλικ στην επιλογή "Επαγγελματίας" 
  Then θα πρέπει να οδηγηθώ στη σελίδα "Εγγραφή Επαγγελματία"
  When συμπληρώσω "Username", "Password","Όνομα εταιρίας", "Πληροφορίες εταιρίας","Τηλέφωνο", "Ώρες επικοινωνίας",
  "Διεύθυνση", "Email"
  And κάνω κλικ στο πεδίο "Φωτογραφία Profil"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω "φωτογραφία Profil" απο τον τοπικό μου δίσκο
  When επιλέξω την φωτογραφία που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στην σελίδα "Εγγραφή Επαγγελματία"
  When κάνω κλικ στο πεδίο "Φωτογραφίες"
  Then εμφανίζεται ένα παράθυρο για να ανεβάσω φωτογραφίες τις επιχείρησης απο τον τοπικό μου δίσκο
  When επιλέξω τις φωτογραφίες που επιθυμώ
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στη σελίδα "Εγγραφή Επαγγελματία"
  And κάνω κλικ στο κουτάκι "Αποδέχομαι τους όρους χρήσης και πολιτικής απορρήτου"
  And κάνω κλικ στο κουμπί "Εγγραφή"
  Then θα πρέπει να εμφανιστεί ένα μύνημα "Ο τύπος εικόνας που ανεβάσατε δεν υποστηρίζεται απο το σύστημα"
  When επιλέξω άλλη εικόνα
  And κάνω κλικ στο κουμπί "ΟΚ"
  Then επιστρέφω στην σελίδα "Εγγραφή Επαγγελματία"
  When κάνω κλικ στο κουμπί "Εγγραφή"
  Then θα πρέπει να μου έρθει email επιβεβαίωσης
  And θα πρέπει να οδηγηθώ στην αρχική σελίδα
