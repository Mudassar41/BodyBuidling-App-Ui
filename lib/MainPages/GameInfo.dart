import 'package:bodygoals/MainPages/GameDetail.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GameInfo extends StatefulWidget {
  final int CatId;
  final String Name;

  const GameInfo({Key key, this.CatId, this.Name}) : super(key: key);
  @override
  _GameInfoState createState() => _GameInfoState();
}

class _GameInfoState extends State<GameInfo> {

  List<GamesInfo> _selectedgames=[];
  List<GamesInfo> _games=[
    GamesInfo(
        ['Dumbbell Pullover','Pec-Deck Flye','Decline Bench Press','Cable Crossover','Dumbbell Bench Press','Incline Dumbbell Flye','Incline Bench Press',]
        ,['assets/chest/Dumble pull over.JPG','assets/chest/butterfly.JPG','assets/chest/decline bench press.JPG','assets/chest/cablecross.png','assets/chest/dumble press.jpg','assets/chest/incline duble fly.JPG','assets/chest/icline bench press.JPG'],1
        ,['pectorals, latissimus dorsi, serratus','middle pecs','lower pecs',' inner pecs, lower pecs','middle pecs','upper pecs','upper pecs','middle pecs'],

        [' Lie on a bench with your upper back, head and neck supported and your feet flat on the floor. Hold a dumbbell with your arms extended above your face. Maintaining just a slight bend in your elbow throughout, slowly lower the dumbbell backward, allowing your elbows to come to a point at which they align with your ears. When you’ve stretched as far as you can without bending your elbows, flex through your chest and lats to reverse direction to bring the dumbbell back overhead.',
          ' Sit with your lower back fully in contact with the pad and your feet flat on the floor. With your elbows at 90-degree angles and forearms flush against the pads, move your arms slightly forward to disengage the weight from the stack. From here, deliberately flex your pecs to bring the handles out in an arc until they meet in front of your body. Squeeze hard, then slowly return to the start, stopping when your upper arms are even with your torso, and repeat.',''
            ' Lie on a decline bench. Your torso should be fully supported from your head to your hips, with your knees bent and feet harnessed behind roller pads. Grasp the bar with a wide, overhand grip. Bend your arms and slowly lower the bar toward your lower chest. When the bar reaches chest level, forcefully extend your arms, elevating the bar back to the starting position.',
          ' Stand in the direct center of a cable-cross station with your feet staggered, knees slightly bent and your focus forward, and grasp D-handles attached to the upper pulleys. Starting with your palms facing downward and elbows bent slightly, flex your pecs to draw the handles down and together, meeting below your waist. Try to keep your elbows up throughout the movement. Pause a moment for a peak contraction, then slowly allow the handles to return to the start position. Don’t let the weight stacks touch down between reps.',''
            'Lie on a bench with your feet flat on the floor, holding a dumbbell in each hand just outside your shoulders. Powerfully press the dumbbells upward toward the ceiling, stopping when they come to an inch or so away from each other above your upper-middle chest, then slowly bend your elbows to lower the weights back down to a point even with your torso.',
          'Lie on a bench set to a 30- to 45-degree angle with your feet flat on the floor. Hold a dumbbell in each hand with a neutral grip, and extend your arms above your chest, maintaining a slight bend in your elbows. Slowly lower the dumbbells in a wide arc down to your sides. Stop when your elbows reach shoulder level and reverse the motion. ',
          'Lie on an incline bench set at 30 to 45 degrees and place your feet flat on the floor for support. Grasp the barbell with an overhand grip just outside shoulder width and unrack it, holding it directly over your upper pecs. Slowly lower the bar to your upper chest, touching down for a brief count before powerfully pressing it back to full elbow extension.',
          'You’ll perform this like the reverse-grip bench, with the obvious adjustment: Maintain an overhand grip throughout the movement and track the bar over your lower pecs instead of upper abs.']


    ),


    GamesInfo(
        ['Standing Cable Curl','Seated Alternating Dumbbell Curl','Dumbbell Concentration Curl','Scott Curl','Barbell Preacher Curl','Incline Dumbbell Curl','Close-Grip Chin-Up','Barbell Curl']
        ,['assets/biceps/cable curl.JPG','assets/biceps/dumble curl.JPG','assets/biceps/dumble concentration curl.JPG','assets/biceps/scott curl.JPG','assets/biceps/preacher curl.JPG','assets/biceps/incline dumble curl.JPG','assets/biceps/close grip chin up.JPG','assets/biceps/barbel curl.JPG'],
        2,
        ['Biceps brachii, with brachialis activation if using a rope',' Biceps and brachialis, emphasizing the full length of the muscle','Biceps, with emphasis on the peak','Biceps, with emphasis on the short, inner head ','Biceps, with emphasis on the stretch','Biceps and brachialis, emphasizing the full length of the muscle','Brachialis mainly, with biceps brachii activation ','Biceps brachii from origin to insertion and peak']
        ,['Stand holding a bar attached to a low pulley cable with an underhand grip, elbows extended. Keep your abs tight, chest up and head straight as you contract your biceps to curl the bar toward your chest, keeping your elbows at your sides throughout. Hold and squeeze the contraction at the top, then slowly return the bar along the same path. Repeat for reps without letting the weight stack touch down between reps.',
      'Stand inside a Smith machine holding the bar in front of your upper thighs, with your chest up, shoulders back and eyes focused straight ahead. Begin by shifting your elbows back and bending them to curl the bar toward your upper abs. As the name suggests, you’ll actually drag the bar up your torso, keeping your elbows behind you the entire time. Upon full contraction, return the bar along the same path and repeat.',
      ' Sit on a low-back bench, holding a dumbbell in each hand at your sides. Keeping your chest up, curl one weight toward the same-side shoulder, squeezing your biceps hard at the top, then lower to the start. Repeat with the other arm. You can either condense the set by lowering one dumbbell as you lift the other, or take it slower by moving through one full rep per side, going all the way up and down with one arm before switching to the other.',
      ' Sit at the end of a flat bench or use a short-back chair. Bend over and grasp a dumbbell with an underhand grip, locking your working arm against your same-side inner thigh. Place your nonworking hand on your leg for balance. Moving only at your elbow, curl the weight as high as you can toward your torso. Squeeze your biceps at the top before lowering the dumbbell back to the start, but don’t let it rest on the floor between reps.',
      'Grasp a barbell or EZ-bar and lean your chest against the angled side of a preacher bench, keeping your back tight and knees slightly bent. (You can also use a dumbbell and train one arm at a time.) Make sure your armpits fit securely against the top of the pad, with your triceps pressed into the flat side of the bench. Hold the bar straight toward the floor with a supinated (palms-up) grip. With your head neutral and eyes focused forward, curl the weight in a smooth arc, squeeze your biceps hard for a one-count, and slowly lower back to the nearly elbows-straight position.',
      'Set up a preacher bench so the top of the pad fits securely under your armpits. Take a shoulder-width, underhand grip on a straight bar or EZ-bar and position your arms parallel to each other on the pad. Keep your feet flat on the floor and your head straight as you flex your biceps to bring the bar as high as possible. Don’t allow your elbows to flare out or come off the bench. Flex strongly at the top before slowly returning the bar along the same path, stopping just short of full elbow extension before starting the next rep. You can also do this exercise one arm at a time with a dumbbell.',
      'Adjust an incline bench to about 45 degrees and sit back squarely against the pad, feet flat on the floor. Your arms should hang straight down by your sides, palms up. With your shoulders shifted back and upper arms in a fixed position perpendicular to the floor, curl the weights so they approach your shoulders, either one at a time or both arms simultaneously. Squeeze your biceps hard at the top before slowly returning to the start position.',
      ' Grasp a fixed overhead bar with a close underhand grip. Hang freely from the bar, arms fully extended and ankles crossed behind you. Contract your lats and bi’s to bring your body upward, concentrating on keeping your elbows tight to your sides. Hold momentarily as your chin crosses the level of the bar, then lower yourself to return to the dead-hang position.',
      ' Stand holding a barbell with a shoulder-width underhand grip, arms extended. Keep your abs tight, chest up and head straight as you contract your biceps to curl the bar from your hip area toward your upper chest, keeping your elbows stitched to your sides throughout. Pause and squeeze your biceps at the top, then slowly return the weight along the same path. Noting the obvious, you could also use an EZ-bar instead of a straight bar here.',
    ]),
    GamesInfo(['Cable Reverse Flye','Bent-Over Dumbbell Lateral Raise','One-Arm Cable Lateral Raise','Cable Front Raise','Push Press','Wide-Grip Smith-Machine Upright Row','Face Pull','Dumbbell Lateral Raise','Seated Barbell Shoulder Press','Seated Dumbbell Shoulder Press'],
        ['assets/shoulder/cable revers fly.JPG','assets/shoulder/bent over dumble.JPG','assets/shoulder/one arm cable.JPG','assets/shoulder/cable raise.JPG','assets/shoulder/push press.JPG','assets/shoulder/machine upright.JPG','assets/shoulder/push cable.JPG','assets/shoulder/cable raise.JPG','assets/shoulder/shoulder press.JPG','assets/shoulder/dumble shoulder press.JPG'],4,
        [' rear deltoids','rear deltoids','middle deltoids','anterior (front) deltoids',' anterior and middle deltoids','anterior, middle and rear deltoids; trapezius','rear deltoids, middle trapezius ',' middle deltoids','anterior, middle and rear deltoids','anterior, middle and rear deltoids'],

        ['Attach D-handles to the upper pulley of a cable machine. Now grasp the left-side handle in your right hand, then step over and get the right-side handle in your left before stepping to the center, equidistant from each stack. Straighten your elbows without locking them out, your palms in a neutral grip. From here, keeping your arms elevated at the level of your shoulders and elbows fixed, open your arms out to your sides, pulling each handle across to the other side by engaging your rear delts. When you reach a point at which your arms are outstretched in a “open hug” pose, reverse the motion to bring the handles back to the start position. Know that one hand will cross over the other when in front — it doesn’t matter which is high and which is low, although you can switch from set to set if you prefer.',
          'With a dumbbell in each hand and your chest up, back flat, knees slightly bent and eyes fixed on a point on the floor just ahead of you, bend over at the hips until your torso is nearly parallel to the floor. Let the dumbbells hang directly beneath you with your elbows fixed in a slightly bent position. From there, powerfully raise the dumbbells up and out to your sides in an arc until your upper arms are about parallel with the floor. Pause at the top for a squeeze, then lower the dumbbells back along the same path, stopping just before your arms go fully perpendicular to the floor, and start the next rep.',
          'Stand sideways to a low cable pulley with your feet shoulder-width apart, holding a D-handle in the hand opposite the pulley. Your nonworking arm can be on your hips or braced on the pulley structure. Keep your abs tight, chest up and shoulders back and, without engaging momentum, raise the cable out to your side in a wide arc, keeping your elbow and hand moving together in the same plane. When your arm reaches a point just above shoulder level, hold it momentarily as you contract the delt, then slowly lower down along the same path, stopping before the weight stack touches down. Finish all reps on that side before switching to the other.',
          'With a D-handle in one hand, stand in a staggered shoulder-width stance with your back to a low cable pulley. Place your nonworking hand on your hip for balance. With your chest elevated, back flat and knees slightly bent, powerfully raise the cable up and out in front of you until your upper arm is about parallel with your working shoulder. Squeeze, then slowly lower your arm back to the start position (without letting the stack touch down) and repeat. Do all reps on one side before switching to the other.',
          'To get into position, either clean a loaded barbell from the floor to shoulder level or take it off pins in a power rack. Hold the bar with an overhand grip, palms up and elbows pointed forward, your upper arms near parallel with the floor as the bar rests at a point atop your upper chest. From a standing position, lower your hips and bend your knees to dip down into a quarter squat. Now recoil to explosively drive upward with your legs as you extend your arms and lift the bar overhead to full elbow extension. Hold the bar there briefly, then lower it back to its resting position on your upper-chest area and descend into the next rep.',
          'With your feet hip-width apart, stand upright, holding the bar of a Smith machine in front of your thighs with an overhand grip a few inches outside shoulder width. Twist the bar to release it from the safety latches and let your arms hang straight, maintaining a slight bend in your knees and a tight core. Flex your shoulders to pull the bar straight up toward your chin, keeping the bar close to your body throughout. In the top position, your elbows will be high and pointing out to your sides. Hold that spot for a second before slowly lowering to the start position.',
          'Put a rope attachment on a pulldown station, and make sure you select a heavy enough weight to counterbalance your weight. Stand in front of the pulley and grasp each end of the rope with an overhand grip so your palms are facing each other, then lift your elbows up to shoulder level and to the sides. Now place one foot on the kneepad, which in this case helps anchor you better than keeping both feet on the floor. To start, lean back so your body forms a 45-degree angle to the floor and, keeping your elbows elevated, pull the rope back toward your face until your hands are alongside your ears. Squeeze, then reverse to the start, not letting the weight stack touch down between reps.',
          'Stand with your feet shoulder-width apart. Keep your abs tight, chest up and shoulders back. With your head straight, hold the dumbbells at your sides with a neutral grip. Without using momentum, raise the dumbbells out to your sides in a wide arc, keeping your elbows and hands moving together in the same plane. Raise the dumbbells just above shoulder level and hold momentarily in the peak contracted position. Slowly lower the dumbbells down along the same path and repeat for reps.',
          'Find a barbell press station — not all gyms have one, so you may have to make one yourself using a low-back bench set inside a power rack. Sit erect, keeping your lower back slightly arched and your feet flat on the floor. Grasp the bar outside of shoulder width with a palms-forward grip, elbows pointing down and outward. Carefully unrack the bar and hold it at shoulder level. In a smooth, strong motion, press the bar straight up to just short of elbow lockout. Squeeze, then lower the bar under control to a point right at your upper chest and clavicle area. Be sure to pull your face back as the bar passes to avoid giving yourself an impromptu nose job.',
          'Sit on a low-back bench, holding a dumbbell in each hand above shoulder level with a pronated grip (palms facing forward). Keep your head straight, spine aligned and eyes focused forward with your shoulders shifted back as you press the dumbbells overhead in an arc toward each other — but don’t let them touch at the top. After a squeeze, reverse the motion under control to the start position and repeat.']),


    GamesInfo(['Pull Ups','Lat Pull Downs','Back Lat Pull Down','V-Bar Lat Pull Down','Seated Cable Rows','One Arm Dumbbell Rows','Bent Over Row','Machine T bar Row','Machine Reverse fly'],

        ['assets/back/pull up.jpg','assets/back/2.jpg','assets/back/3.jpg','assets/back/4.jpg','assets/back/5.jpg','assets/back/6.jpg','assets/back/7.jpg','assets/back/8.jpg','assets/back/9.jpg'], 5,
        ['Lats','Lats,Biceps,Shoulder,Upper Back','Lats,Abs,biceps,upper Back','Lats,Abs,Biceps,Upper back','Upper Back,Biceps,Lats','Upper Back,Biceps','Upper Back,Biceps,shoulder','Upper Back,Lats,Shoulder','Lats,Shoulder'],
        ['Extend your arms and take underhand grip on the bar with your hands shoulder-width apart.Inhale and stick your chest out to pull yourself upward untill your chin is at level of the bar',
          'Sit facing the machine and wedge your knees under the restrain pad provided.Take a very wide overhand grip on the bar',
          'Sit facing the machine and secure your thighs under restrain pad.Take a very wide overhard grip on the bar.',
          'Sit facing the machine and wedge your knees under the restrain pad Grip the handles with your palms facing toward each other.'
          ,'Sit facing the machine Place your feet against the foot stops and lean toward the pulely.',
          'Graps the dumbbell with your palm facing in .Rest  the opposite hand and knee on a bench.Be sure your upper arm travels a little awway from yor torso.',
          'Stand with your knees slightly flexed.Bend your torso at an angle of about 45 degrees,keeping your back straight.take an overhard grip on bar with your hands more than shoulde-width apart and your arms dangling straight down from your shoulder.',
          'Stand on Platform provided on each side of the T-bar.Keep your knees slightly bent and your back straight.Bend over at about 45 degree angle against incline bench if once is provided'
          ,
          'Sit down with your upper body flat against the pad and your feet on the floor in front of you.Grab hold of horizental handles provided.']),







    GamesInfo(['Leg Extention','Lying Leg Curls','Seated Leg Curls','Good Morning','Dumbbell Squats','Stiff Legged Deadlift','Squats','Power Squats','Leg Press','Hack Squats','Split Squat'],

        ['assets/legs/leg extention.jpg','assets/legs/lying legs curls.jpg','assets/legs/seated leg curls.jpg','assets/legs/good morning legs.jpg','assets/legs/dumble squats.jpg','assets/legs/stiff legged deadlifts.jpg','assets/legs/squats.jpg','assets/legs/power squats.jpg','assets/legs/leg press.jpg','assets/legs/hack squats.jpg','assets/legs/split squat.jpg'],

        6,
        //   ['Leg Extension','Lying Leg Curls','Dumbbell Lunge','Seated Leg Curls','Good Morning','Dumbbell Squats','Stiff Legged Deadlift','Squats','Power Squats','Leg Press','Hack Squats','Split Squat'],
        ['Quad','Hamstrings','Hamstring,Buttocks','Quad,Calf,Hamstrings','Hamstrings,Buttocks','Hamstrings.Butocks','Quad,Calf,Lower Back','Hamstrings,Buttocks,Lower Back','Quad,Calf','Quad,Calf,Abs','Quad,Calf,Abs,Buttocks','Quads,Calf,Buttocks','Quatd,Hamstrings,Calf'],

        ['Sit on machine.Grasp handles of seating platform to steady your body throughout the movement.Bend your knees and place your ankles under the set of rollers pad.'
          ,'Lie facedown on the padded surface of the machine.Grasp the handles, straighten your kness and hook your feet under set of roller pads.',
          //'Stand with your feet hip-width apart.Lift a light barbell up to a position across your shoulder behind your neck.Inhale and take a comfortable step forward,keeping your torso as upright.Return to staring position.',
          'Sit on machine with your legs straight,ankles resting on roller pad.Lower the leg restrain over your things to secure them.Graps the handles provided on each othe',
          // 'Sit on machine with your legs straight,ankles resting on roller pad.Lower the leg restrain over your things to secure them.Graps the handles provided on each other',
          'Stand with your feet slightly apart.Place a barbell across your trapezius muscles or a little lower across your posterior deltoids.Inhale and bend forward at the waist untill your toso is roughly parallel to the floor,being sure to keep your back straight.'

              'Stand with your feet slightly apart and grasp a dumbbell in each hand with your arms hanging down at your sides.Look straight ahead,inhale,slightly arch your back and squat down',
          'Stand with your feet slightly apart and grasp a dumbbell in each hand with your arms hanging down at your sides.Look straight ahead,inhale,slightly arch your back and squat down',
          'Stand with your feet placed fairly close to each other,facing the bar on the floor.Bend forward at the waist,keeping your back arched and,if possible,your legs straight.Take an over-hand grip on the bar,with your arms relaxed',
          'Stand facing the bar with your feet slightly spread.Keep your back motionless and a little arched. Flex your knees until your thighs are almost parallel to the floor. Take an overhand grip on the bar, with your hands slightly more than shoulder-width apart to prevent the bar from rolling and to work with much heavier weight.Inhale, contract your abdominal and low back muscles, and lift the bar by straightening your legs (contracting your abdominals and keeping your back straight), raising it in front of your shins.When the bar reaches your knees, extend your torso so you are standing erect with your arms straight down at your sides.Exhale as you complete the movement.',
          'This movement is the same as conventional squats, but your legs are widely spread with your toes pointed outward, which specifically works the inner thighs.',
          'Sit on machine, laying back against the angled back pad and replace your feet about shoulder-width apart',
          'Flex your knees place your back against the padded surface,wedge your shoulder beneath the yoked attached to the machine and place your feet fairly close together',

          'Grab a pair of dumbbell and hold at arms length against your sides.Palms facing each other' ]
      //   ['Leg Extension','Lying Leg Curls','Dumbbell Lunge','Seated Leg Curls','Good Morning','Dumbbell Squats','Stiff Legged Deadlift','Squats','Power Squats','Leg Press','Hack Squats','Split Squat'],
    ),

    GamesInfo(['Broomstick Twist','Dumbbell SideBlend','Planks','Abdominal Bycycle','Hanging Knee Raise','Crunches','Decline Situps','Barbell Roll Out','Incline Leg Raise','Hanging Leg Raise','Flat Bench leg Raise'], [], 99,

        ['Oblique,Abs','Oblique,Abs','Abs','Abs','Abs,Forearm','Abs','Abs','Absd,Shoulder,Legs','Abs,Quad','Abs,Forearm','Abs,Buttocks'],[]),




    GamesInfo(


        ['Burpee','Elliptical machine','Treadmill Running','Bycycle machine','Step machine'],
        ['assets/cardio/1.jpg','assets/cardio/2.jpg','assets/cardio/3.jpg','assets/cardio/4.jpg','assets/cardio/5.jpg'], 7,


        ['Quad,Abs,Buttocks','Quad,Calf,Biceps','Quad,Calf,Biceps,Hamstrings','Quad,Calf,Biceps,Hamstrings','Quad,Calf,Biceps,Hamstrings'],

        ['Begin Exercise by bending knees and lowering hips down while simultanously placing your hands on the ground and kicking your feet behind you as drop to ground',
          'Graps the handles while using machine.Thisfeature helps by monitoring your heart rate to make sure that you are working out in your target range',
          'Hold the handlebar and begin to walk when treadmill starts to move',
          'Sit down on bike and adjust the seat to your hieght',
          'Grasp the handlebars loosely with a fist like grip and start move']),


    GamesInfo(['Reverse wrist Curls','Wrist Curls','Barbell Back Wrist Curls'], ['assets/forearm/1.jpg','assets/forearm/2.jpg','assets/forearm/3.jpg'], 8,

        ['Forearm','Forearm','Forearm'],['Sit With You forearms Resting on your thighs or on a bench.Take an overhead grip on the bar with your wrists passively flexed','Sit With You Rorearms Resting on your thighs or on a bench.Take an Underhand grip on the bar with your wrists passively extended','Stand with your feet shoulder width apart.Grasp the barbell in your hands with your palms']),

    GamesInfo(['Pushdowns','Close Grip push ups','Reverse Pushdowns','Bench Dips','Lying Triceps Extention','Dumbell triceps extention','Seated dumbbell extention','Rop pushdowns'],['assets/triceps/1.jpg','assets/triceps/2.jpg','assets/triceps/3.jpg','assets/triceps/4.jpg','assets/triceps/5.jpg','assets/triceps/6.jpg','assets/triceps/7.jpg','assets/triceps/8.jpg'],3,['Triceps','Triceps,Shoulder','Triceps','Triceps,Chest,Shoulder','Triceps','triceps','triceps','Triceps'],


        ['Standing face the machine with your hands on the bar and your elbows against your sides.Inhale and straighten your arms but dont seperate your elbows from your side','Begin in a regular position .Now move hands until they are directly under your shoulder','Standing face the machine with your hands on the bar and your elbows against your sides.Inhale and straighten your arms but dont seperate your elbows against your sides','Place your hands on edge of flat bench and rest your feet on other bench.Assume a torso-leg angle about 90 degree.Inhale and bend your arms and then return to position','Lie on flat bench and take an overhand grip on the bar with your arms extended.Inhale and bend your elbows,making sure you dont allow them to flare to sides','Sit holding  the dummbell in both hands your neck .Inhale and extend your arm straight until they are above your head','Stand or sit holding a dumbbell in one hand with your arm extended upward.Inhale and bend your elbow to lower the dumbbell behind your neck Return to the stating position, exhaling as you complete the movement',

          '	Feet shoulder width apal, face a high pulleymachine enabled with a rope ahachment. Gasp the ends of the rope so that your palms are facinginwardand your elbows are by your waist. This isyour starting position.Keepin9your body stationay, exhaleas you lowerthe rope by completely extendingyourarms untilthey are straight down by your sides.Hold fOr a momen1and then inhale as you slowlyreturn the rope to the stating position.'])
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _games.forEach((element) {
GamesInfo gamesInfo=GamesInfo(element._Gamename, element._GameUrl, element.id, element._TargetArea, element._Description);
if(widget.CatId==element.id){
  
  
  _selectedgames.add(gamesInfo);
  
}

print(_selectedgames);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: color.Red,title: Text(widget.Name.toUpperCase(),style: TextStyle(color: Colors.white),),),body:
    ListView.builder(

      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index){

      return Column(
        children: [

          for(int i=0;i<_selectedgames[index]._Gamename.length;i++)
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),),
              clipBehavior: Clip.antiAlias,

              child: Stack(children: [
                Center(child: Text('loading......')),
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameDetail(


                            Name:_selectedgames[index]._Gamename[i],
                            Image:_selectedgames[index]._GameUrl[i],
                            Des:_selectedgames[index]._Description[i],
                            Target:_selectedgames[index]._TargetArea[i]

                        )),
                      );

                    },
                    child: Container(height: SizeConfig.imageSizeMultiplier*30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_selectedgames[index]._GameUrl[i]),fit: BoxFit.cover)),child: Container(color: Colors.black26,),)),
                Positioned(
                    top: 25,
                    left: 15,
                    child: Text(_selectedgames[index]._Gamename[i],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),


              ],),
            )
        ],
      );

    },itemCount: _selectedgames.length,)

     );
  }


}


class GamesInfo{

  List _Gamename=[];
  List _GameUrl=[];
  List _TargetArea=[];
  List _Description=[];
  int id;

  GamesInfo(this._Gamename, this._GameUrl,this.id,this._TargetArea,this._Description);


}