//Since our LibraryRepository already contains the data, 
//our LibraryItemWidget should only be responsible for displaying that data.

import 'package:flutter/material.dart';
import 'package:youtube/models/library_item.dart';
import 'package:youtube/repositories/library_repository.dart';


class LibraryItemWidget extends StatelessWidget {
  final LibraryItem item;

  // VoidCallBack is a function that take no parameter and return nothing
  final VoidCallback? onTap;

  const LibraryItemWidget({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 180,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thumbnail
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item.thumbnail,
                  width: 180,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
          
              const SizedBox(width: 12),
          
              // Informations
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
          
                    const SizedBox(height: 4),
          
                    Row(
                      children: [
                        Icon(
                          item.icon,
                          size: 16,
                        ),
          
                        const SizedBox(width: 4),
          
                        Expanded(
                          child: Text(
                            item.subtitle ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}