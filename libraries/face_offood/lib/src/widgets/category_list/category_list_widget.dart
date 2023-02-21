import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryListItem> items;
  const CategoryListWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: List.from(
          items.map(
            (item) => _CategoryItemWidget(
              item: item,
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final CategoryListItem item;
  const _CategoryItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          item.onTap(item);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ColoredBox(
                      color: Colors.grey,
                      child: Image.network(
                        item.imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imgUrl;
  final void Function(CategoryListItem item) onTap;

  CategoryListItem({
    required this.onTap,
    required this.label,
    required this.imgUrl,
  });
}
