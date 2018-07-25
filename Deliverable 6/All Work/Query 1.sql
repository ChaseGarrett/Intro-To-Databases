SELECT        Person.PersonID, Person.LName, Student.FacID, Registration.EventID, Event.Title, Registration.Date_Registered, Registration.Attended_YorN
FROM            Person INNER JOIN
                         Student ON Person.PersonID = Student.PersonID INNER JOIN
                         Registration ON Person.PersonID = Registration.PersonID INNER JOIN
                         Event ON Person.PersonID = Person.PersonID AND Registration.EventID = Event.EventID WHERE Student.FacID = 87;
