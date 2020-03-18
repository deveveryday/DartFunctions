import 'package:ordered_set/ordered_set.dart';
import 'trick.dart';

main(){
	var trickSet = OrderedSet<Trick>();
	trickSet.add(new Trick('Ollie', 1));
	trickSet.add(new Trick('Pop Shoveit', 1));
	trickSet.add(new Trick('KickFlip', 2));
}

