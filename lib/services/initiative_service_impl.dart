import '../models/initiative.dart';
import '../utils/constants.dart';
import 'initiative_service.dart';

class InitiativeServiceImpl extends InitiativeService {
  var initiatives = [
    Initiative(
      id: 0,
      title: "Title 1",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Approved",
      likes: 4,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
      owner: GIUSEPPE,
    ),
    Initiative(
      id: 1,
      title: "Title 2",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Approved",
      likes: 45,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
      owner: CRISTINA,
    ),
    Initiative(
      id: 2,
      title: "Title 3",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Finalized",
      likes: 8,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2"],
      owner: NOELIA,
    ),
    Initiative(
      id: 3,
      title: "Title 4",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Finalized",
      likes: 2,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
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
}
