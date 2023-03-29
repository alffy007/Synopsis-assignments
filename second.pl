#!/usr/bin/perl

# Scalars

$a=5;
$str="five";
print $a,"\n";
print "$str\n";


#Arrays

@a=(1,2,3,"apple","orange","banana");

$a[0]=0;
$a[1]=1;

print @a, "\n";
print "@a\n" ;
print $a[0], "\n";
print @a[0,2,3], "\n";


# Dynamic Arrays

$count=@a; 
print "count=$count", "\n";
print "$#a=", $#a, "\n";
$#a=4;
print "a=@a\n";
print "$a[-1]=", $a[-1], "\n";
$p=\@a;
print "$p->[-1]=", $p->[-1], "\n";
print @$p, "\n";


# # Arrays of Arrays
@a1=(11,12,13);
@a2=(14,15,16);
@a3=(17,18,19);
@a4=(@a1,@a2,@a3);
@a5=(\@a1,\@a2,\@a3);
@a6=([21,22,23],[24,25,26],[27,28,29]);
print $a5[0][0], "\n";
$a5[0][0]=0; print "@a1\n";

# # Hashes

%ages=("james"=>35, "gopal"=>40);
$ages{"Davit"}=3;
print $ages{"james"},"\n";
print @ages{"james","gopal"},"\n";
%ages=("james", 35, "gopal", 40);
%ages=@a;
@b=%ages;
print %ages, "\n";
print join(" ", %ages), "\n";
$p=\%ages;
print $p->{"james"},"\n";


# Hashes to hashes
%h1=("one",1,"two",2); 
print $h1{"zero"},"\n";
%h2=("three",3,"four",4);
%h3=("h1",\%h1,"h2",\%h2);
%h4=("h1", {"one",1,"two",2}, 
"h2", {"three",3,"four",4});
print $h3{"h1"}{"one"},"\n";
print $h3{"h2"}{"four"},"\n";
$h3{"h1"}{"zero"}=0;
 print $h1{"zero"},"\n";
@a=(1,2,3);
print $a[0], "\n";
$p1=[1,2,3]; #Pointer to an unnamed array
print $p1->[2], "\n";
%h=('one',1,'two',2);
print $h{'two'}, "\n";
$p2={'one',1,'two',2}; #Pointer to unnamed hash
print $p2->{'two'}, "\n";


