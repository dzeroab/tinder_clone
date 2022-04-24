part of 'home_screen.dart';

/// Dummy Search view
class _SearchView extends StatelessWidget {
  const _SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Row(
        children: const [Expanded(child: Text("Search")), Icon(Icons.search)],
      ),
    );
  }
}

/// Profile card
///
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.name,
    required this.picture,
    required this.cardAnimationController,
    this.showRemark = false,
    this.age,
  }) : super(key: key);

  final String name;
  final String picture;
  final int? age;
  final bool showRemark;
  final CardAnimationController cardAnimationController;

  String get _ageText => age != null ? "$age" : "";

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: picture,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(color: Colors.black12),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 140,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black12, Colors.black45],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Text(
                  "$name $_ageText",
                  style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (showRemark)
              Positioned(
                bottom: 40,
                left: 24,
                right: 24,
                child: Row(
                  children: [
                    Expanded(
                      child: Opacity(
                        opacity: cardAnimationController.getRemarkVisible(UserEmotionAction.like),
                        child: const _ActionRemarkView(action: UserEmotionAction.like),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Opacity(
                        opacity: cardAnimationController.getRemarkVisible(UserEmotionAction.pass),
                        child: const _ActionRemarkView(action: UserEmotionAction.pass),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

class _ActionRemarkView extends StatelessWidget {
  const _ActionRemarkView({Key? key, required this.action}) : super(key: key);

  final UserEmotionAction action;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: action.color, width: 3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(action.icon, color: action.color),
          const SizedBox(width: 4),
          Text(action.text, style: TextStyle(fontSize: 24, color: action.color)),
        ],
      ),
    );
  }
}

///
///
/// Action Button Group
///
class _ActionButtonGroup extends StatelessWidget {
  const _ActionButtonGroup({Key? key, this.onPass, this.onLike}) : super(key: key);
  final VoidCallback? onPass;
  final VoidCallback? onLike;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ActionButton(text: 'Pass', onPressed: onPass, icon: Icons.close, iconColor: Colors.yellow),
        const SizedBox(width: 16),
        _ActionButton(
          text: 'Like',
          onPressed: onLike,
          icon: FontAwesomeIcons.heart,
          iconColor: Colors.red,
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          heroTag: text,
          onPressed: onPressed,
          child: Icon(icon, color: iconColor),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        const SizedBox(height: 8),
        Text(text),
      ],
    );
  }
}
