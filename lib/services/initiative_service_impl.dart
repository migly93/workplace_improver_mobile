import '../models/initiative_status_enum.dart';
import '../models/initiative.dart';
import '../utils/constants.dart';
import 'initiative_service.dart';

class InitiativeServiceImpl extends InitiativeService {
  var initiatives = [
    Initiative(
      id: 0,
      title: "Office Library",
      description:
          "We can buy a library from Ikea and build it together. The library wiil be public and everyone can leave all the books they want to share.",
      status: InitiativeStatusEnum.created,
      likes: 10,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#books", "#office", "#furniture", "#office", "#perks"],
      owner: GIUSEPPE,
    ),
    Initiative(
      id: 1,
      title: "Ping Pong table",
      description:
          "We should have a ping pong table in the dream factory to relieve some stress and enjoy even more our time at the office. We should also organize ping pong tournaments!",
      status: InitiativeStatusEnum.inProgress,
      likes: 8,
      comments: ["comment 1"],
      tags: ["#pingpong", "#perks", "#games"],
      owner: LOY,
    ),
    Initiative(
      id: 2,
      title: "Free Ice cream",
      description:
          "Coffe is good, but ice cream is better. We should have a stock of ice creams in the freezer as we have for coffee.",
      status: InitiativeStatusEnum.approved,
      likes: 25,
      comments: [
        "comment 1",
        "Comment 2",
        "Comment 3",
        "comment 1",
        "Comment 2",
        "Comment 3"
      ],
      tags: ["#icecream", "#food", "kitchen"],
      owner: CRISTINA,
    ),
    Initiative(
      id: 3,
      title: "Eurofriday",
      description:
          "This initiative is to let everyone create a side project to learn new technologies and make a presentation to explain to the team what has been learned.",
      status: InitiativeStatusEnum.completed,
      likes: 2,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#eurofriday", "#sideproject"],
      owner: NOELIA,
    )
  ];

  @override
  Future<void> saveOrUpdate(Initiative initiative) async {
    if (initiative.id == -1) {
      initiative.id = initiatives.length;
      initiatives.add(initiative);
    } else {
      var toUpdate =
          initiatives.firstWhere((element) => element.id == initiative.id);
      initiatives[initiatives.indexOf(toUpdate)] = initiative;
    }
  }

  @override
  Future<List<Initiative>> getAll() async {
    return initiatives;
  }

  @override
  Future<List<Initiative>> getByUser(int userId) {
    return Future.value(
        initiatives.where((element) => element.owner.id == userId).toList());
  }
}
