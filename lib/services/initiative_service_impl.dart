import 'package:workplace_improver_mobile/models/initiative.dart';
import 'package:workplace_improver_mobile/models/user.dart';

import 'initiative_service.dart';

class InitiativeServiceImpl extends InitiativeService {
  @override
  Future<int> getCounterValue() async {
    return 11;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    // do nothing
  }

  @override
  Future<List<Initiative>> getAll() async {
    var initiatives = [
      Initiative(
        "Title 1",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
        "Approved",
        DateTime.now(),
        4,
        ["comment 1", "Comment 2", "Comment 3"],
        User('Giuseppe', 'Migliaccio'),
      ),
      Initiative(
        "Title 2",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
        "Approved",
        DateTime.now(),
        45,
        ["comment 1", "Comment 2", "Comment 3"],
        User('Cristina', 'Moran'),
      ),
      Initiative(
        "Title 3",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
        "Finalized",
        DateTime.now(),
        8,
        ["comment 1", "Comment 2", "Comment 3"],
        User('Noelia', 'Carrasco'),
      ),
      Initiative(
        "Title 4",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sit amet elementum leo. Nullam nec rhoncus magna, sed mollis tortor. Nunc a magna ligula. Mauris libero orci, volutpat non tellus id, euismod convallis nisi. Quisque vitae velit vel tortor aliquam commodo. Vivamus et turpis nibh. Quisque ac dignissim felis, eget tincidunt sem. Vestibulum consequat dapibus dapibus. Aenean consectetur viverra dui ut hendrerit. Suspendisse iaculis sit amet felis non volutpat.",
        "Finalized",
        DateTime.now(),
        2,
        ["comment 1", "Comment 2", "Comment 3"],
        User('Noelia', 'Carrasco'),
      )
    ];
    return initiatives;
  }
}
