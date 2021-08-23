package project3;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.*;
import java.sql.* ;

public class project {
    static String url = "jdbc:db2://winter2021-comp421.cs.mcgill.ca:50000/cs421";

    //REMEMBER to remove your user id and password before submitting your code!!
    static String your_userid = "USER_ID";
    static String your_password = "PASSWORD";
    static Connection con;
    static Statement statement;


    public static boolean doesPersonExist(int HIN) throws SQLException {
        String querySQL = "SELECT hinsurnum from " + "Person";
        java.sql.ResultSet rs = statement.executeQuery ( querySQL ) ;
        ArrayList<Integer> hinnums=new ArrayList<>();
        while ( rs.next ( ) )
        {
            int hinnum = rs.getInt ( 1 ) ;
            hinnums.add(hinnum);
        }
        if (hinnums.contains(HIN)){
            return true;
        }
        return false;
    }

    public static void printMenu(){
        System.out.println("VaccineApp Main Menu:\n");
        System.out.println("    1. Add a Person\n");
        System.out.println("    2. Assign a slot to a Person\n");
        System.out.println("    3. Enter Vaccination information\n");
        System.out.println("    4. Exit Application\n");
        System.out.println("Please Enter Your Option: ");
    }

    public static void addPersonHIN(){
        System.out.println("Add a person\n");
        System.out.println("    Please enter HIN: ");
    }

    public static void addPersonInfo(int hin, Scanner scan){
        System.out.println("    Please enter name: ");
        String newName=scan.nextLine();
        System.out.println("    Please enter gender (male/female): ");
        String newGender=scan.nextLine();
        System.out.println("    Please enter your date of birth: ");
        String newDOB=scan.nextLine();
        System.out.println("    Please enter phone number: ");
        String newPhone=scan.nextLine();
        System.out.println("    Please enter your city: ");
        String newCity=scan.nextLine();
        System.out.println("    Please enter your postal code: ");
        String newPostal=scan.nextLine();
        System.out.println("    Please enter street address: ");
        String newAddr=scan.nextLine();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String newRDate=dateFormat.format(date);
        System.out.println("    Today's date is: "+newRDate);
        System.out.println("    Please enter your category: ");
        String newCategory=scan.nextLine();
        try {
            String addPerson = "INSERT INTO Person VALUES(" +hin+",\'"+  newName + "\',\'" + newGender + "\',\'" + newDOB + "\',\'" + newPhone + "\',\'" + newCity + "\',\'" + newPostal + "\',\'" + newAddr + "\',\'" + newRDate + "\',\'" + newCategory +"\')";
            //System.out.println (querySQL) ;
            statement.executeUpdate(addPerson);
            System.out.println("DONE");
        } catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }

    }

    public static void updatePerson(int hin, Scanner scan) throws SQLException{
        System.out.println("    Please enter name: ");
        String newName=scan.nextLine();
        System.out.println("    Please enter gender (male/female): ");
        String newGender=scan.nextLine();
        System.out.println("    Please enter your date of birth: ");
        String newDOB=scan.nextLine();
        System.out.println("    Please enter phone number: ");
        String newPhone=scan.nextLine();
        System.out.println("    Please enter your city: ");
        String newCity=scan.nextLine();
        System.out.println("    Please enter your postal code: ");
        String newPostal=scan.nextLine();
        System.out.println("    Please enter street address: ");
        String newAddr=scan.nextLine();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String newRDate=dateFormat.format(date);
        System.out.println("    Today's date is: "+newRDate);
        System.out.println("    Please enter your category: ");
        String newCategory=scan.nextLine();
        try {
            String updatePerson = "UPDATE Person SET name= \'" + newName + "\', gender= \'" + newGender + "\', dob= \'" + newDOB + "\', phone= \'" + newPhone + "\', city= \'" + newCity + "\', postalcd= \'" + newPostal + "\', streetaddr= \'" + newAddr + "\', regdate= \'" + newRDate + "\', cname= \'" + newCategory + "\' WHERE hinsurnum= " + hin;
            //System.out.println (querySQL) ;
            statement.executeUpdate(updatePerson);
            System.out.println("DONE");
        } catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static ArrayList brandOfAPerson(int hin) throws SQLException {
        ArrayList<String> brands=new ArrayList<String>();
        try {
            String sql = "SELECT vname FROM VaccSlot WHERE hinsurnum="+hin+" GROUP BY vname;";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            while ( rs.next ( ) )
            {
                brands.add(rs.getString(1));
            }
            if (brands.size()>=0){
                return brands;
            }
            else{
                brands.add("");
                return brands;
            }
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        brands.add("");
        return brands;
    }

    public static int dosesReceived(int hin) throws SQLException {
        try {
            String sql = "SELECT COUNT(*) FROM VaccSlot WHERE hinsurnum= " + hin;
            java.sql.ResultSet rs = statement.executeQuery(sql);
            if (rs.next()) {
                return rs.getInt(1);
            } else {
                return -1;
            }
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return -1;
    }

    public static int dosesRequired(String vname) throws SQLException {
        try {
            String sql = "SELECT doses FROM Vaccine WHERE vname= " + "\'" + vname + "\'";
            java.sql.ResultSet rs = statement.executeQuery(sql);
            if (rs.next()) {
                return rs.getInt(1);
            } else {
                return -1;
            }
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return -1;
    }

    public static boolean checkDate(String asgndate) throws SQLException{
        try{
            String sql="SELECT count(*) FROM VaccSlot WHERE hinsurnum IS NULL AND vdate>\'" +asgndate+"\'";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            int result=0;
            while ( rs.next ( ) )
            {
                result=rs.getInt(1);
            }
            if (result==0){
                return false;
            }
            else{
                return true;
            }
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return false;
    }


    public static void assignASlot(int hin) throws SQLException{
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String asgndate=dateFormat.format(date);
        if (checkDate(asgndate)) {
            try {
                String sql = "UPDATE VaccSlot SET hinsurnum=" + hin + ", asgndate=\'" + asgndate + "\' WHERE hinsurnum IS NULL AND vdate>\'"+asgndate+"\' LIMIT 1;";
                statement.executeUpdate(sql);
                System.out.println("DONE");
            } catch (SQLException e) {
                int sqlCode = e.getErrorCode(); // Get SQLCODE
                String sqlState = e.getSQLState(); // Get SQLSTATE

                // Your code to handle errors comes here;
                // something more meaningful than a print would be good
                System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                System.out.println(e);
            }
        }
        else{
            System.out.println("There is currently no available slot.");
        }
    }

    public static void assignASlotWithInfo(int hin, String vslot, String vdate, String vtime) throws SQLException{
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String asgndate=dateFormat.format(date);
        if (checkDate(asgndate)) {
            try {
                String sql = "UPDATE VaccSlot SET hinsurnum=" + hin + ", asgndate=\'" + asgndate + "\' WHERE hinsurnum IS NULL AND vdate>\'"+asgndate+"\' AND vdate=\'"+vdate+"\' AND vslot=\'"+vslot+"\' AND vtime=\'"+vtime+"\' LIMIT 1;";
                statement.executeUpdate(sql);
                System.out.println("DONE");
            } catch (SQLException e) {
                int sqlCode = e.getErrorCode(); // Get SQLCODE
                String sqlState = e.getSQLState(); // Get SQLSTATE

                // Your code to handle errors comes here;
                // something more meaningful than a print would be good
                System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                System.out.println(e);
            }
        }
        else{
            System.out.println("There is currently no available slot.");
        }
    }

    public static boolean checkSlot(String vdate, String vslot, String vtime) throws SQLException{
        try {
            String sql = "SELECT count(*) FROM VaccSlot WHERE hinsurnum IS NULL AND vslot=\'"+vslot+"\' AND vdate=\'"+vdate+"\' AND vtime=\'"+vtime+"\';";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            int result=0;
            while ( rs.next ( ) )
            {
                result=rs.getInt(1);
            }
            if (result==0){
                return false;
            }
            else{
                return true;
            }
        } catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return false;
    }

    public static void updateVial(String vname, int batch, int vialid) throws SQLException{
        try {
            String sql = "INSERT INTO Vial VALUES(\'"+vname+"\', "+batch+", "+vialid+");";
            statement.executeUpdate ( sql ) ;
            System.out.println("DONE");
        }
        catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static void updateVaccInfo(String loc, String vdate, String vslot, String vtime, int nurse, String vname, int batch, int vialid) throws SQLException{
        try {
            String sql = "UPDATE VaccSlot SET licensenum="+nurse+", vname=\'"+vname+"\', batchno="+batch+", vialid="+vialid+" WHERE vslot=\'"+vslot+"\' AND vdate=\'"+vdate+"\' AND vtime=\'"+vtime+"\' AND locname=\'"+loc+"\';";
            statement.executeUpdate ( sql ) ;
            System.out.println("DONE");
        }
        catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static ArrayList nurses(String loc, String date) throws SQLException {
        ArrayList<Integer> nurses=new ArrayList<Integer>();
        try {
            String sql = "SELECT licensenum FROM NurseAssignments WHERE vdate=\'"+date+"\' AND locname=\'"+loc+"\';";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            while ( rs.next ( ) )
            {
                nurses.add(rs.getInt(1));
            }
            return nurses;
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return nurses;
    }

    public static ArrayList batchesWithVName(String loc, String vname) throws SQLException {
        ArrayList<Integer> batches=new ArrayList<Integer>();
        try {
            String sql = "SELECT batchno FROM VaccineBatch WHERE locname=\'"+loc+"\' AND vname=\'"+vname+"\';";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            while ( rs.next ( ) )
            {
                batches.add(rs.getInt(1));
            }
            return batches;
        }
        catch (SQLException e)
        {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return batches;
    }



    public static boolean checkVaccUpdate(String loc, String vdate, String vtime, String vslot, int hin) throws SQLException{
        try {
            String sql = "SELECT hinsurnum FROM VaccSlot WHERE licensenum IS NULL AND vslot=\'"+vslot+"\' AND vdate=\'"+vdate+"\' AND vtime=\'"+vtime+"\' AND locname=\'"+loc+"\' AND hinsurnum IS NOT NULL;";
            java.sql.ResultSet rs = statement.executeQuery ( sql ) ;
            if (rs.next()) {
                return rs.getInt(1) == hin;
            }
            else{
                return false;
            }
        } catch (SQLException e) {
            int sqlCode = e.getErrorCode(); // Get SQLCODE
            String sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return false;
    }


    public static void main(String[] args) throws SQLException {
        boolean quit = false;

        // Register the driver.  You must register the driver before you can use it.
        try {
            DriverManager.registerDriver(new com.ibm.db2.jcc.DB2Driver());
        } catch (Exception cnfe) {
            System.out.println("Class not found");
        }

        /* This is the url you must use for DB2.
        //Note: This url may not valid now !
        String url = "jdbc:db2://winter2021-comp421.cs.mcgill.ca:50000/cs421";

        //REMEMBER to remove your user id and password before submitting your code!!
        String your_userid = "than6";
        String your_password = "bMV7gm4N";*/

        con = DriverManager.getConnection(url, your_userid, your_password);
        statement = con.createStatement();

        /*String querySQL = "SELECT hinsurnum from " + "Person";
        java.sql.ResultSet rs = statement.executeQuery ( querySQL ) ;
        ArrayList<Integer> hinnums=new ArrayList<>();
        while ( rs.next ( ) )
        {
            int hinnum = rs.getInt ( 1 ) ;
            hinnums.add(hinnum);
        }*/

        Scanner scan = new Scanner(System.in);
        while (!quit) {
            printMenu();
            int option = scan.nextInt();
            while (option < 1 || option > 4) {
                System.out.println("You have entered the wrong option number. Please enter again: ");
                option = scan.nextInt();
            }
            if (option == 1) {
                addPersonHIN();
                int hin = scan.nextInt();
                if (doesPersonExist(hin)) {
                    System.out.println("The person already exists. Do you want to update your info? (yes/no) ");
                    if (scan.next().equals("yes")) {
                        scan.nextLine();
                        updatePerson(hin, scan);
                    } else {
                        System.out.println("Okay, the info won't be updated.\n");
                    }
                } else {
                    scan.nextLine();
                    addPersonInfo(hin, scan);
                }
            } else if (option == 2) {
                System.out.println("Assign a slot\n");
                System.out.println("    Please enter HIN: ");
                int hin = scan.nextInt();
                String vname;
                ArrayList<String> vnames = brandOfAPerson(hin);
                if (vnames.size() == 2) {
                    vname = null;
                } else if (vnames.size() == 1) {
                    vname = vnames.get(0);
                } else {
                    vname = "";
                }
                if (vname == null) {
                    System.out.println("You already have an assigned slot in the future.");
                } else {
                    System.out.println("Do you want to be assigned a slot 1).randomly or 2).based on the info you give? (Please enter 1 or 2).");
                    int waysToBeAssigned = scan.nextInt();
                    if (waysToBeAssigned == 2) {
                        System.out.println("Please enter the slot id you'd like to be assigned.");
                        scan.nextLine();
                        String vslot = scan.nextLine();
                        System.out.println("Please enter the date you'd like to be assigned.");
                        String vdate = scan.nextLine();
                        System.out.println("Please enter the time you'd like to be assigned.");
                        String vtime = scan.nextLine();
                        if (checkSlot(vdate, vslot, vtime)) {
                            if (vname.equals("")) {
                                System.out.println("This is your first dose.");
                                assignASlotWithInfo(hin, vslot, vdate, vtime);
                            } else {
                                int doses = dosesRequired(vname);
                                int received = dosesReceived(hin);
                                if (doses >= 0 && received >= 0) {
                                    if (received >= doses) {
                                        System.out.println("You have received the required number of shots. No need to get a slot.");
                                    } else {
                                        assignASlotWithInfo(hin, vslot, vdate, vtime);
                                    }
                                } else {
                                    System.out.println("There is something wrong.");
                                }

                            }
                        } else {
                            System.out.println("The slot you have chosen is not available on that day.");
                        }
                    } else {
                        if (vname.equals("")) {
                            System.out.println("This is your first dose.");
                            assignASlot(hin);
                        } else {
                            int doses = dosesRequired(vname);
                            int received = dosesReceived(hin);
                            if (doses >= 0 && received >= 0) {
                                if (received >= doses) {
                                    System.out.println("You have received the required number of shots. No need to get a slot.");
                                } else {
                                    assignASlot(hin);
                                }
                            } else {
                                System.out.println("There is something wrong.");
                            }

                        }
                    }
                }
            } else if (option == 3) {
                int batch;
                System.out.println("Enter Vaccine Information\n");
                System.out.println("    Please enter HIN: ");
                int hin = scan.nextInt();
                String vname;
                ArrayList<String> vnames = brandOfAPerson(hin);
                if (vnames.size() == 2) {
                    if (vnames.get(0) == null) {
                        vname = vnames.get(1);
                    } else {
                        vname = vnames.get(0);
                    }
                } else if (vnames.size() == 1) {
                    if (vnames.get(0) != null) {
                        vname = vnames.get(0);
                    } else {
                        vname = "";
                    }
                } else {
                    vname = "";
                }
                scan.nextLine();
                System.out.println("Your vaccine brand is: " + vname + " (blank if you haven't got any vaccine before.)");
                System.out.println("    Please enter location: ");
                String loc = scan.nextLine();
                System.out.println("    Please enter vdate: ");
                String vdate = scan.nextLine();
                System.out.println("    Please enter vtime: ");
                String vtime = scan.nextLine();
                System.out.println("    Please enter slot id: ");
                String vslot = scan.nextLine();
                if (checkVaccUpdate(loc, vdate, vtime, vslot, hin)) {
                    System.out.println("Available nurses are listed here. Please choose one.");
                    ArrayList<Integer> nurses = nurses(loc, vdate);
                    for (int i = 0; i < nurses.size(); i++) {
                        System.out.println(nurses.get(i));
                    }
                    int nurse = scan.nextInt();
                    scan.nextLine();
                    if (vname.equals("")) {
                        System.out.println("    Please enter vname: ");
                        vname = scan.nextLine();
                    } else {
                        System.out.println("    Please enter vname: ");
                        String vnamenew = scan.nextLine();
                        while (!vname.equals(vnamenew)) {
                            System.out.println("The name you have entered is not the same as your last vaccine name. Please try again.");
                            vnamenew = scan.nextLine();
                        }
                    }
                    System.out.println("Available batches adjusted by your past vaccination condition are listed here. Please choose one.");
                    ArrayList<Integer> batches = batchesWithVName(loc, vname);
                    for (int i = 0; i < batches.size(); i++) {
                        System.out.println(batches.get(i));
                    }
                    batch = scan.nextInt();

            /*else{
                ArrayList<Integer> batches = batchesWithoutVName(loc);
                for (int i = 0; i < batches.size(); i++) {
                    System.out.println(batches.get(i));
                }
                batch = scan.nextInt();
                vname=getVacc(batch);
            }*/
                    System.out.println("Please enter the vial id:");
                    int vialid = scan.nextInt();
                    updateVial(vname, batch, vialid);
                    updateVaccInfo(loc, vdate, vslot, vtime, nurse, vname, batch, vialid);
                }else{
                    System.out.println("You don't own this slot.");
                }

            }
            else if (option ==4){
                quit=true;
            }
        }
    }
}

