# Spring-boot-data-H2-embedded

In this app, I used H2 in-memory database for demo purpose

**Application.properties**

```
spring.datasource.url=jdbc:h2:mem:TEST;DB_CLOSE_DELAY=-1;
spring.datasource.username=sa
spring.datasource.password=
spring.datasource.driver-class-name=org.h2.Driver
spring.datasource.platform=h2
spring.jpa.hibernate.ddl-auto=none
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.H2Dialect
```

This single interface will do all the magic for you

```
public interface EmployeeService extends JpaRepository<Employee, Integer>{
}
```

## Getting Tomcat ready

In tomcat-users.xml file under <tomcat_installation_dir>/conf/tomcat-users.xml, add the following lines

```xml
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="admin" password="admin" roles="manager-gui,manager-script"/>
```

Start the tomcat with

```sh
> ./bin/catalina.sh start
```

**To Deploy application in Tomcat**

To deploy in tomcat using maven, we added the tomcat7-maven-plugin in pom.xml

```xml
<plugin>
				<groupId>org.apache.tomcat.maven</groupId>
				<artifactId>tomcat7-maven-plugin</artifactId>
				<version>2.2</version>
				<configuration>
					<url>http://localhost:8080/manager/text</url>
					<server>localhost</server>
					<path>/${finalName}</path>
					<username>admin</username>
					<password>admin</password>
					<update>true</update>
				</configuration>
</plugin>
```

```
> mvn clean package
> mvn tomcat7:deploy
```



