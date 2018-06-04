--Lab_7 
--PL/SQL


--Question 1.
BEGIN 
    DBMS_OUTPUT.put_line('“My PL/SQL Block Works”');
END;
 
 
--Question 2.
DECLARE 
    V_CHAR VARCHAR2(25) := '42 is the answer'; 
    V_NUM NUMBER := 42; 
BEGIN 
    DBMS_OUTPUT.put_line(V_CHAR);
    DBMS_OUTPUT.put_line(V_NUM);
END; 

--Question 3.
     a.  The value of V_WEIGHTat position 1 is:  	- 2
     b.  The value of V_NEW_LOCNat position 1 is:  	- Western Europe
     c.  The value of V_WEIGHTat position 2 is:   	- 601   
     d.  The value of V_MESSAGE at position 2 is: 	- Product 10012 is in stock
     e.  The value of V_NEW_LOCNat position 2 is: 	- not declared?

	 
--Question 4.
DEFINE B= 1;
DEFINE C= 2;
DECLARE 
     result number;
BEGIN
    result := (&B / &C) + &C;
    DBMS_OUTPUT.put_line(result);
END;


--Question 5.
DEFINE annual_salary = 10000;
DEFINE bonus_percentage = 5;
DECLARE 
     v_salary number:= &annual_salary;
     v_bonus number:= &bonus_percentage;
     v_result number:= 0;
BEGIN
    v_salary := NVL(v_salary, 0);
    v_bonus := NVL(v_bonus, 0);
    v_result := v_salary * (1.0 + v_bonus / 100);
    DBMS_OUTPUT.put_line(v_result);
END;