symptom_of(malaria,body_weakness,headache,fever,night_chills,joint_pains,neck_pains,abdominal_pains).
symptom_of(typhoid,vomiting,diaorrhea,abdominal_pains,headache,colourless_urine,constipation).
symptom_of(lung_cancer,cough,fever,hoarseness,chest_pain,wheezing,weight_loss,headache).
symptom_of(common_cold,headache,fever,shaking_chills,nasal_congestion,runny_nose,sore_throat).
symptom_of(skin_cancer,blue_skin,itchy_skin,skin_rushes,pale_skin,painful_sores,headache).
start :- write('Hello and welcome to disease diagnosis Artificial Intelligence system'),nl,

write('malaria'),nl,write('typhoid'),nl,write('lung_cancer'),nl,write('common_cold'),nl,write('skin_cancer'),nl,
write('Which disease do you want to know its symptoms from the above list?'),nl,
write('Type its name, all lower case, followed by a period.'),nl,
read(Disease),
write('Diagnosing disease.....'),nl,write('Diagnosing disease.............'),nl,write('Diagnosing disease.....................'),nl,
symptom_of(Disease,Symptom,Symptom2,Symptom3,Symptom4,Symptom5,Symptom6,Symptom7),
nl,write(Disease),write(' symptoms are: '),nl,write(Symptom),nl, write(Symptom2),nl, write(Symptom3),nl, write(Symptom4),nl, write(Symptom5),nl, write(Symptom6),nl, write(Symptom7),nl,
nl,write('GoodBye ! Thank you for using this system and we hope to see you soon @Hassan_Wari 2018.'),abolish(known,3) .
