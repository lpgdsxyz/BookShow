/*by ShiShengling*/
CREATE TABLE Book(Bname     CHAR(30),
                  authorid INT,
                  publisherid INT,
                  commentsid INT,
                  noteid   INT,
              
                  catagoryid INT,
                  format CHAR(20),
                  path CHAR(30)
                  PRIMARY KEY(name))

CREATE TABLE BookCatagory(Cname CHAR(20),
                          
                          PRIMARY KEY(Cname))

CREATE TABLE BookCatagoryInventory(BCID INT(20),
                                   Bame     CHAR(30),
                                   Cname CHAR(20),
                                   PRIMARY KEY(BCID))

CREATE TABLE Notes(attribute CHAR(100),
                   noteid    INT(20),
                   PRIMARY KEY(noteid))

CREATE TABLE NotesInventory(NID INT(20),
                            name     CHAR(30),
                            noteid    INT(20),
                            PRIMARY KEY(NID))

CREATE TABLE Author(Aname CHAR(30),
                    nation CHAR(20),
                    birth  DATE,
                    PRIMARY KEY(Aname))

CREATE TABLE AuthorInventory(AID INT(20),
                             Aname CHAR(30),
                             Bame     CHAR(30),
                             PRIMARY KEY(AID))

CREATE TABLE Comments(score INT(10),
                      comments CHAR(50),
                      PRIMARY KEY(CID),
                      FOREIGN KEY(CID)REFERENCES CommentInventory)

CREATE TABLE CommentInventory(CID INT(20),
                              PRIMARY KEY(CID)
                              )


                             
                    
                     

                                  
 



