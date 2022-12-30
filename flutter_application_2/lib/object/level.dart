class objlevel {
  objlevel({
    required this.id,
    required this.xu,
    required this.capdo,
    required this.kinhnghiem,
    required this.level1,
    required this.score1,
    required this.level2,
    required this.score2,
    required this.level3,
    required this.score3,
    required this.ten,
    required this.level4,
    required this.score4,
    required this.level5,
    required this.score5,
    required this.level6,
    required this.score6,
    required this.level7,
    required this.score7,
    required this.level8,
    required this.score8,
    required this.level9,
    required this.score9,
    required this.level10,
    required this.score10,
    required this.total
  });
  final int xu;
  final int capdo;
  final String ten;
  final int kinhnghiem;
  final String id;
  final bool level1;
  final int score1;
  final bool level2;
  final int score2;
  final bool level3;
  final int score3;
  final bool level4;
  final int score4;
  final bool level5;
  final int score5;
  final bool level6;
  final int score6;
  final bool level7;
  final int score7;
  final bool level8;
  final int score8;
  final bool level9;
  final int score9;
  final bool level10;
  final int score10;
  final int total;

  factory objlevel.fromJson(Map<String, dynamic> json) => objlevel(
        id: json["id"],
        xu: json["xu"],
        capdo: json["capdo"],
        kinhnghiem: json["kinhnghiem"],
        level1: json["level1"],
        score1: json["score1"],
        level2: json["level2"],
        score2: json["score2"],
        level3: json["level3"],
        ten: json["ten"],
        score3: json["score3"],
        level4: json["level4"],
        score4: json["score4"],
        level5: json["level5"],
        score5: json["score5"],
        level6: json["level6"],
        score6: json["score6"],
        level7: json["level7"],
        score7: json["score7"],
        level8: json["level8"],
        score8: json["score8"],
        level9: json["level9"],
        score9: json["score9"],
        level10: json["level10"],
        score10: json["score10"],
        total: json["total"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "xu":xu,
        "kinhnghiem":kinhnghiem,
        "capdo":capdo,
        "level1": level1,
        "score1": score1,
        "level2": level2,
        "score2": score2,
        "level3": level3,
        "score3": score3,
        "level4": level4,
        "score4": score4,
        "level5": level5,
        "score5": score5,
        "level6": level6,
        "ten":ten,
        "score6": score6,
        "level7": level7,
        "score7": score7,
        "level8": level8,
        "score8": score8,
        "level9": level9,
        "score9": score9,
        "level10": level10,
        "score10": score10,
        "total": total
      };
}
