move(1, left, right) :-  
    write('move top disk from'),  
    write(left),  
    write(' to '),  
    write(right),  
    n1.  
move(N, left, right, center) :-  
    N>1,  
    S is N-1,  
    move(S, left, right, center),  
    move(1, left, right,_),  
    move(S, center, left, right).  

?- move(3, left, right, center).  
From left to right move top disk   
From left to center move top disk  
From right to center move top disk  
From left to right move top disk  
From center to left move top disk  
From center to right move top disk  
From left to right move top disk  

?- move(4, left, right, center) :-
From left to center move top disk
From left to right move top disk
From center to right move top disk
From left to center move top disk
From right to left move top disk
From right to center move top disk
From left to center move top disk
From left to right move top disk
From center to right move top disk
From center to left move top disk
From right to left move top disk
From center to right move top disk
From left to center move top disk
From left to right move top disk
From center to right move top disk

?- move(5, left, right, center) :-
From left to right move top disk
From left to center move top disk
From right to center move top disk
From left to right move top disk
From center to left move top disk
From center to right move top disk
From left to right move top disk
From left to center move top disk
From right to center move top disk
From right to left move top disk
From center to left move top disk
From right to center move top disk
From left to right move top disk
From left to center move top disk
From right to center move top disk
From left to right move top disk
From center to left move top disk
From center to right move top disk
From left to right move top disk
From center to left move top disk
From right to center move top disk
From right to left move top disk
From center to left move top disk
From center to right move top disk
From left to right move top disk
From left to center move top disk
From right to center move top disk
From left to right move top disk
From center to left move top disk
From center to right move top disk
From left to right move top disk

yes  

move(3,left,right,center) if  
  
            move(2,left,center,right) and ] *  
            move(1,left,right,center) and  
            move(2,center,right,left). ] **  

In order to satisfy the goal ?- move(3,left,right,center) do this :  
  
              satisfy the goal ?-move(2,left,center,right), and then  
              satisfy the goal ?-move(1,left,right,center), and then  
              satisfy the goal ?-move(2,center,right,left).  

move(2,left,center,right) if ] *  
  
             move(1,left,right,center) and  
             move(1,left,center,right) and  
             move(1,right,center,left).  
move(2,center,right,left) if ] **  
  
             move(1,center,left,right) and  
             move(1,center,right,left) and  
             move(1,left,right,center).  

move(3,left,right,center) if  
  
        move(1,left,right,center) and  
        move(1,left,center,right) and *  
        move(1,right,center,left) and  
        ---------------------------  
        move(1,left,right,center) and  
         ---------------------------  
        move(1,center,left,right) and  
        move(1,center,right,left) and **  
        move(1,left,right,center).  
