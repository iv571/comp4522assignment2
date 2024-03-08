%-------------------------------------------------------------
% Facts
employee(john).
employee(franklin).
employee(alicia).
employee(jennifer).
employee(ramesh).
employee(joyce).
employee(ahmad).
employee(james).
employee(joe).
employee(jonas).

salary(john, 30000).
salary(franklin, 40001).
salary(alicia, 25000).
salary(jennifer, 43000).
salary(ramesh, 38000).
salary(joyce, 25000).
salary(ahmad, 25000).
salary(james, 55000).
salary(joe, 29000).
salary(jonas, 35000).

department(john, research).
department(franklin, research).
department(alicia, administration).
department(jennifer, administration).
department(ramesh, research).
department(joyce, research).
department(ahmad, administration).
department(james, headquarters).
department(joe, administration).
department(jane, administration).
department(jonas, administration).

supervise(franklin, john).
supervise(franklin, ramesh).
supervise(franklin, joyce).
supervise(jennifer, alicia).
supervise(jennifer, ahmad).
supervise(james, franklin).
supervise(james, jennifer).
supervise(ahmad, joe).
supervise(ahmad, jane).
supervise(ahmad, jonas).

female(alicia).
female(jennifer).
female(joyce).
female(jayne).

male(john).
male(franklin).
male(ramesh).
male(ahmad).
male(james).
male(joe).
male(jonas).

project(productx).
project(producty).
project(productz).
project(computerization).
project(reorganization).
project(newbenefits).

works_on(john, productx, 32).
works_on(john, producty, 8).
works_on(ramesh, productz, 40).
works_on(joyce, productx, 20).
works_on(joyce, producty, 20).
works_on(franklin, producty, 10).
works_on(franklin, productz, 10).
works_on(franklin, computerization, 10).
works_on(franklin, reorganization, 10).
works_on(alicia, newbenefits, 30).
works_on(alicia, computerization, 10).
works_on(ahmad, computerization, 35).
works_on(ahmad, newbenefits, 5).
works_on(jennifer, newbenefits, 20).
works_on(jennifer, reorganization, 15).
works_on(james, reorganization, 10).
works_on(joe, reorganization, 30).
works_on(joe, newbenefits, 10).
works_on(jane, reorganization, 20).
works_on(jane, producty, 10).
works_on(jane, productx, 10).
works_on(jonas, productz, 20).
works_on(jonas, productx, 10).
works_on(jonas, producty, 10).

%-------------------------------------------------------------
% Rules
superior(X,Y) :- supervise(X,Y).

subordinate(X,Y) :- superior(Y,X).

% Should you need to write new rules, please enter them here.


%-------------------------------------------------------------
% Queries
% Write your queries here .

% Q1: Are there any employees that are "female" and that work in project
 "computerization" with an effort of "10" hours per week, and that have
 "jennifer" as a supervisor? If so, list them.

female(Employee), works_on(Employee, computerization, 10), supervise(jennifer, Employee).
% result is Alicia

% Q2: Who is the employee who makes over "40000" dollars a year and works
for the "research" department?

salary(Employee, Amount), Amount > 40000, department(Employee, research).
% The Employee is Franklin

% Q3: Who is the supreme chief of this fictional company (aka the President)



% Q4: Who are the individuals that work on project "productx" with an *effort*
of 20 or more hours a week?





