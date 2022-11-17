import 'package:flutter/material.dart';

class Textual extends StatefulWidget {
  final String situationName, category;
  const Textual(this.situationName, this.category);

  @override
  State<Textual> createState() => _TextualState();
}

class _TextualState extends State<Textual> {
  String viewText(String stName, String substName) {
    String TextTutorial;
    if (stName == "Choking" && substName == "Adult/Child")
      TextTutorial =
          "1. Ask the victim, Are you Choking?\n\n2. Encourage the casuality to cough.\n\n3. If they cannot clear the object themselves, support them with one hand while learning them forwards:\n\n  (i) Give up to five back blows between shoulder blades.\n (ii) Check the mouth of victim.\n\n4. if unsuccessful, try up to five abdominal thrusts\n\n5. If the casualty still choking, dial 999/112 for the emergency services.\n\n6. Repeat steps 3 and 4, checking the mouth after each step untill thr hrlp arrives.\n";
    else if (stName == "Choking" && substName == "Infant")
      TextTutorial =
          "###Never use abdominal thrusts on an infant.###\n\n1. Lay the infant face down on your thigh while supporting their head. Give the infant up to five back blows\n\n2. Turn the infant over so they are lying on your other thigh and checktheir mouth obious obstructions (donot do a blind finger sweep). If chocking persists, try up to five chest thrusts.\n\n3. Place two fingers on the breastbone, one finger breath  below the nipple line and push downwards.\n\n4. Check the mouth of victim.\n\n5. If the obstruction has not cleared, dial 999/112 for emergency help using your mobile phone. Taking the infant with you if necessary.\n";
    else if (stName == "Acid Attack")
      TextTutorial =
          "1. It is important to report the crime and call 999 immediately.\n\n2. You should swiftly and very carefully remove contaminated clothing or jewellery.\n\n3. Then, you should rinse the affected skin under copious amounts of running water.\n\n4. You should give priority to flushing the eyes and face (and the airway if affected) first.\n\n5. A bottle of water is insufficient. You will need a lot of water, ideally from a tap, hosepipe or shower.\n\n6. Use tap or bottled water. Or, wherever possible, use Hartmann’s or Normal Saline solutions.\n\n7. Paramedics should then  transport the victims to hospital as soon as possible.\n";
    else if (stName == "Burns" && substName == "Face")
      TextTutorial =
          "1. Check for danger.\n\n2. Dial 999/112 for an ambulance and tell them  you suspect burns  to the airways.\n\n3. Maintain the airway, loosening clothing around the casualty\'s neck if needed.\n\n4. Give the casualty ice or sips of cold water to relieve the pain and any swelling.\n\n5. Monitor the casualty continuously as any injury may cause deffulty in breathing.\n";
    else if (stName == "Burns" && substName == "Others")
      TextTutorial =
          "1. Douse the burn with cool or lukewarm running water until the ambulance arrives.\n\n2. As you pour cold water over the burn, carefully remove any contaminated clothing.\n\n3. Irrigate under cool or lukewarm running water until the ambulance   arrives. Including both sides of the eyelids when irrigating. Ask the casualry to reemove contact lenses if they can.\n\nEnsure that water drains away from the face.\n";
    else if (stName == "Earthquake" && substName == "Indore")
      TextTutorial =
          "1. If you are INDOORS -- STAY THERE! Get under a desk or table and hang on to it (Drop, Cover, and Hold on!) or move into a hallway or against an inside wall.\n\n2. STAY CLEAR of windows, fireplaces, and heavy furniture or appliances.\nGET OUT of the kitchen, which is a dangerous place (things can fall on you).\n\n3. DON\'T run downstairs or rush outside while the building is shaking or while there is danger of falling and hurting yourself or being hit by falling glass or debris";
    else if (stName == "Earthquake" && substName == "Outside")
      TextTutorial =
          "If you are OUTSIDE -- get into the OPEN, away from buildings, power lines, chimneys, and anything else that might fall on you.";
    else if (stName == "Earthquake" && substName == "Driving")
      TextTutorial =
          "1. If you are DRIVING -- stop, but carefully. Move your car as far out of traffic as possible.\n\n2. DO NOT stop on or under a bridge or overpass or under trees, light posts, power lines, or signs.\n\n3. STAY INSIDE your car until the shaking stops. When you RESUME driving, watch for breaks in the pavement, fallen rocks, and bumps in the road at bridge approaches.";
    else if (stName == "Drowning" && substName == "Adult")
      TextTutorial =
          "1. Call 999.\n\n2. Place towel or itemof clothing over the face.\n\n3. Perform chest compresssions to  the tempo of Staying Alive. Do not give rescue breaths.\n\n4. Use a defibrillator if available.\n\n5. Continue chest compressions help arrives.\n\n             What to do:\n(i). Before start CPR, use a towel or piece of clothing and lay it over the mouth and nose of the casualty.\n\n(ii). Start CPR, Kneel by the casualty and put the heel of your hand in the middle of the chest, put  your other hand on top of the first. Interlok your fingers makinf sure they do not touch the ribs.\n\n(iii)Do not give rescue breaths.\n\n\n\nContinue to perform CPR until:\n\n(i) Emergency help arrives and takes over.\n\n(ii) The person starts showing signs of life and starts to breathe normally.\n\n(iii) You are too exhusted to continue.\n\n(iv) If there is a helper can change over every onr-to-tow minutes, with minimal inperruptionsto chest compressions and continue.";
    else if (stName == "Drowning" && substName == "Child")
      TextTutorial =
          "A- Perform five initial rescue breaths:\n1. Ensure airway is open.\n\n2. Carefully remove any visible obstruction from the mouth.\n\n3. Grantly support chin with two fingertips of one hand.\n\n4. With other hand, pinch the soft part of the child\'s nose.\n\n5. take a breath and [alce your mounth around the childs lip, making a good seal.\n\n6. Breathe steadily into the child\'s mouth for one second. Watch the chest rise.\n\n7. Keeping hands in position,remove your your mouth and allow their chest to fall.\n\n8. Repeat steps 5 to 7, keeping airway open while pinching the child\'s nose and supporting their chin.\n\nB- Perform  30 chest compressions\n\nC- Give two rescue breaths.\n\nD- Continue alternating 30 chest compressions with two rescue breaths.\n\nE - After  one minutes, if you have no helper, deal 999/112.";
    else
      TextTutorial =
          "A- Ask a helper to dial 999/112 for a ambulance.If you are alone, start the sequence of rescue breaths and chest compressions below. Do not leave the infant alone at this time.\n\nB- Perform five initial rescue breaths:\n1. Ensure airway is open.\n\n2. Carefully remove any visible obstructions from the mouth and nose.\n\n3. Keep supporting the infant\'s chin with the fingertip of one hand.\n\n4. Take a breath and sael your lips around the infant\'s mouth and nose.\n\n5. Breathe steadily into the infant\'s mouth and nose for one second. Watch the chest rise.\n\n6. Keeping hands in position, remove your mouth and allow their chest to fall.\n\n7. Repeat steps 4 to 6. Keep airway open and support the chin.\n\nC - Perform 30 chest compressions using two fingers only.\n1. Lay the infant,on their back, on a hard, flat surface.\n\n2. Place two fingertips on the center of the infant\'s chest.\n\n3. Make sure your fingertips are palced so ouwill not apply pressure to the ribs, stomatch or bottom end of the breastbone.\n\n4. Press strieght down to at least a third of the depth of the infant\'s chest.\n\n5. Give 30 chest compressions at a rate of 100-120 compressions per minutes.\n\nD - Give two rescue breaths.\n\nE - Continue alternating 30 chest compressions with two rescue breaths.\n\nF - After one minute, if you have no helper, dial 999/112 for an ambulance.";
    return TextTutorial;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('${widget.situationName}:::${widget.category}'),
          //backgroundColor: Colors.blue,
        ),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            viewText(widget.situationName, widget.category),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
