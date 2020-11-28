game<-function(pos=0,count=0){
  roll = sample(0:6,1)
  pos = pos + roll
  if(pos>100){
    pos = pos-roll
  }
  if(pos==100){
    return(count)
  }
  if(pos==99){pos=58}
  else if(pos==97){pos=65}
  else if(pos==93){pos=25}
  else if(pos==89){pos=48}
  else if(pos==75){pos=44}
  else if(pos==60){pos=23}
  else if(pos==53){pos=15}
  else if(pos==50){pos=11}
  else if(pos==35){pos=9}
  else if(pos==21){pos=3}
  else if(pos==24){pos=7}
  else if(pos==4){pos=16}
  else if(pos==18){pos=22}
  else if(pos==26){pos=37}
  else if(pos==12){pos=33}
  else if(pos==49){pos=51}
  else if(pos==42){pos=61}
  else if(pos==55){pos=74}
  else if(pos==88){pos=92}
  else if(pos==85){pos=95}
  else if(pos==82){pos=98}
  
  game(pos,count+1)
  
}
list = c()
for(i in 1:10000){
  list=append(list,game())
}
a = table(list)
plot(a)