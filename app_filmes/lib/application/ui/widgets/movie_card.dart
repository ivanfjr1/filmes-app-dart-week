import 'package:app_filmes/application/ui/filmes_app_icons_icons.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158,
      height: 280,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://br.web.img3.acsta.net/pictures/19/04/03/18/23/2539612.jpg',
                      width: 148,
                      height: 184,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Coringa',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                const Text(
                  '2019',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 90,
            right: -10,
            child: Material(
              elevation: 5,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 13,
                      FilmesAppIcons.heart,
                      color: Colors.grey,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
