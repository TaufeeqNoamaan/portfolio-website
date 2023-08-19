import 'package:flutter/material.dart';

class Skill {
  final String name;
  final int percentage;

  Skill({required this.name, required this.percentage});
}

class SkillsSection extends StatefulWidget {
  @override
  _SkillsSectionState createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  final List<Skill> skills = [
    Skill(name: 'MERN Stack', percentage: 65),
    Skill(name: 'Flutter', percentage: 80),
    Skill(name: 'PostgreSQL', percentage: 25),
    Skill(name: 'Java', percentage: 75),
    Skill(name: 'Python', percentage: 80),
    Skill(name: 'Solidity', percentage: 30),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          width: 50.0,
          height: 2.5,
          color: Colors.black,
        ),
        SizedBox(height: 20.0),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: (skills.length / 2).ceil(),
          itemBuilder: (context, index) {
            final skill1 = skills[index * 2];
            final skill2Index = index * 2 + 1;
            final skill2 =
                skill2Index < skills.length ? skills[skill2Index] : null;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildSkillProgressBar(skill1),
                  ),
                  SizedBox(width: 10.0),
                  if (skill2 != null)
                    Expanded(child: _buildSkillProgressBar(skill2)),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSkillProgressBar(Skill skill) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 5.0),
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return LinearProgressIndicator(
              value: _animationController.value * skill.percentage / 100,
              minHeight: 8.0,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            );
          },
        ),
        SizedBox(height: 5.0),
        Text(
          '${(_animationController.value * skill.percentage).toInt()}%',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
