notice:-
write('This is a Disease Diagnosis Artificial intelligence System for Diagnosing some Diseases'),nl,
write('This system has been designed by Hassan_Wari'),nl,
write('To use it, just answer the simple questions the AI system asks you but first we will require you to log into the system.'),nl,
nl,
write('Enter the name of the doctor:DR '),
read(Y),
Y=wari,
write('Enter your Doctors code '),
read(Z),
Z=7869,nl,
write('Log in.............').


disease(Patient,tuberculosis,isoniazid,4*3):-
symptom(Patient, persistent_cough),
symptom(Patient, constant_fatigue),
symptom(Patient, weight_loss),
symptom(Patient, lack_of_appetite),
symptom(Patient, fever),
symptom(Patient, coughing_blood),
symptom(Patient, night_sweats).

disease(Patient,amoeba,abz,3*3):-
symptom(Patient, diaorhea),
symptom(Patient, fever),
symptom(Patient, body_weakness),
symptom(Patient, lack_of_appetite),
symptom(Patient, abdominal_pains).						
                                                
disease(Patient,malaria,ketakonazol,3*3):-
symptom(Patient, fever),
symptom(Patient, lack_of_appetite),
symptom(Patient, body_weakness),
symptom(Patient, shaking_chills),
symptom(Patient, headache).

disease(Patient,typhoid,rifampin,2*3):-
symptom(Patient, diaorhea),
symptom(Patient, fever),
symptom(Patient, abdominal_pains),
symptom(Patient, body_weakness),
symptom(Patient, mild_fever).

disease(Patient,ulcers,udihep_forte,3*3):-
symptom(Patient, headache),
symptom(Patient, abdominal_pains),
symptom(Patient, lack_of_appetite),
symptom(Patient, rumbling_stomach),
symptom(Patient, body_weakness),
symptom(Patient, night_sweats),
symptom(Patient, fever).

disease(Patient,liver_cirrhosis,cachcet,3*3):-
symptom(Patient, body_weakness),
symptom(Patient, fartigue),
symptom(Patient, shaking_chills),
symptom(Patient, lack_of_appetite).


disease(Patient,skin_cancaer,enterogermina,3*3):-
symptom(Patient, blue_skin),
symptom(Patient, itchy_skin),
symptom(Patient, skin_rushes),
symptom(Patient, pale_skin).

disease(Patient,breast_cancaer,cacetrizine,4*3):-
symptom(Patient, harden_breast),
symptom(Patient, pain_in_the_breast),
symptom(Patient, lack_of_appetite),
symptom(Patient, headache),
symptom(Patient, body_weakness).

disease(Patient,common_cold,himachal,1*3):-
symptom(Patient, headache),
symptom(Patient, fever),
symptom(Patient, shaking_chills),
symptom(Patient, nasal_congestion),
symptom(Patient, runny_nose),
symptom(Patient, sore_throat).

disease(Patient,lung_cancer,streptomycin,4*3):-
symptom(Patient, cough),
symptom(Patient, fever),
symptom(Patient, hoarseness),
symptom(Patient, chest_pain),
symptom(Patient, wheezing),
symptom(Patient, weight_loss),
symptom(Patient, lack_of_appetite),
symptom(Patient, coughing_blood),
symptom(Patient, headache),
symptom(Patient, shortness_of_breath).


/*Ask rules*/

symptom(P, Val):-ask('Does the Patient have',Val).
ask(Obj, Val):-known(Obj, Val, true),!.
ask(Obj, Val):-known(Obj, Val, false),!, fail.
ask(Obj, Val):-nl,write(Obj),write(' '),write( Val) , write('?(y/n)'), read(Ans), !,
((Ans=y, assert(known(Obj, Val, true)));(assert(known(Obj, Val, false)),fail)).

diagnose:-nl,write('Diagnosing disease..........'),nl,disease(Symptom,Disease,Drug,Pres) ,!,nl,
write('What is the name of the patient?'),nl,
read(X),
write(X), write(' could be infected with '), write(Disease),nl,write('And the system highly recommends that '),write(X), write(' should use this drug '), write(Drug), write(' with the following prescription '), write(Pres).
diagnose:- nl, write('Sorry,we may not be able to diagnose the desease!!').

start:-notice,repeat, abolish(known/3),dynamic(known/3), retractall(known/3), diagnose,nl,nl, write('Try again ? (y/n)'),read(Resp),\+ Resp=y,
nl,write('GoodBye ! Thank you for using this system and we hope to see you soon @CS 2.1 2018'),abolish(known,3) .
