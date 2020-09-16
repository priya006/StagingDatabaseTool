# JspWebApp
Jsp Web app Displaying data from local database in a webpage hosted locally

# Pre-Requisites
1. Glass Fish Sever 5.
2. Copy the `mysql-connector-java-5.1.5-bin.jar` in the path `Downloads/glassfish5/glassfish/lib`
3. In the `asenv.conf` file found inside the glass fish installation folder. Add the Java home path like so `AS_JAVA=/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home`
4. Add the port as well `AS_ADMIN_PORT=4848`
5. Copy the jar file  `mysql-connector-java-5.1.5-bin.jar` in the target folder of your Java project
6. Mak sure you have mysql server running locally in the port `3306` and it has a database and a table with data to query

# How to run the Jsp Program in IntelliJ Idea Ultimate?
1. Follow the instruction in https://www.jetbrains.com/help/idea/creating-and-running-your-first-java-ee-application.html
The Jsp Page served locally opens up automatically

# How to debug the Jsp program?
1. Debug the Jsp program in intellij like any Java program. Evaluate expression in intellij is so handy in debugging :) 




