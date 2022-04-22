import 'package:workplace_improver_mobile/models/initiative.dart';
import 'package:workplace_improver_mobile/models/user.dart';

import 'initiative_service.dart';

class InitiativeServiceImpl extends InitiativeService {
  var initiatives = [
    Initiative(
      title: "Title 1",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Approved",
      likes: 4,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
      owner: User(
        firstName: 'Giuseppe',
        lastName: 'Migliaccio',
        imageUrl:
            'https://cdn.dribbble.com/users/81809/screenshots/3347540/gokussj.jpg',
      ),
    ),
    Initiative(
      title: "Title 2",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Approved",
      likes: 45,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
      owner: User(
        firstName: 'Cristina',
        lastName: 'Moran',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_YdhVcfSALkr-boct2kimVsDKkwtkjRDtA&usqp=CAU',
      ),
    ),
    Initiative(
      title: "Title 3",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Finalized",
      likes: 8,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2"],
      owner: User(
        firstName: 'Noelia',
        lastName: 'Carrasco',
        imageUrl: '',
      ),
    ),
    Initiative(
      title: "Title 4",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
      status: "Finalized",
      likes: 2,
      comments: ["comment 1", "Comment 2", "Comment 3"],
      tags: ["#tag1", "#tag2", "#tag3", "#tag4", "#tag5", "#tag6"],
      owner: User(
        firstName: 'Noelia',
        lastName: 'Carrasco',
        imageUrl: '',
      ),
    )
  ];

  @override
  Future<int> getCounterValue() async {
    return 11;
  }

  @override
  Future<void> createInitiative(Initiative initiative) async {
    initiatives.add(initiative);
  }

  @override
  Future<List<Initiative>> getAll() async {
    return initiatives;
  }
}
