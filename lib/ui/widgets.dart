part of 'home_screen.dart';

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

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.name,
    required this.picture,
  }) : super(key: key);

  final String name;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: CachedNetworkImage(
          imageUrl: picture,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(color: Colors.black12),
        ),
      ),
    );
  }
}

///
/// Action Button Group
///
class _ActionButtonGroup extends StatelessWidget {
  const _ActionButtonGroup({Key? key, this.onNope, this.onLike}) : super(key: key);
  final VoidCallback? onNope;
  final VoidCallback? onLike;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ActionButton(text: 'Nope', onPressed: onNope, icon: Icons.close, iconColor: Colors.yellow),
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
