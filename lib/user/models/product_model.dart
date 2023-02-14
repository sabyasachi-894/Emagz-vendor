import 'package:flutter/material.dart';

class Product {
  final String? image, title, description, category;
  final int? price, size, id;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.category,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      category: "All",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1513884923967-4b182ef167ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHNob3BwaW5nJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      category: "Top Offers",
      price: 234,
      size: 8,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHNob3BwaW5nJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      category: "Mobile & Comp",
      price: 234,
      size: 10,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bW9iaWxlJTIwbGFwdG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      category: "Electronic",
      price: 234,
      size: 11,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1526665814499-fbdb4394ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODJ8fGVsZWN0cm9uaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      category: "Fashion",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1487744480471-9ca1bca6fb7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fHNob3BwaW5nJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    category: "Furniture",
    price: 234,
    size: 12,
    description: dummyText,
    image:
        "https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    color: const Color(0xFFAEAEAE),
  ),
];
List<Product> dressList = [
  Product(
      id: 1,
      title: "Dress",
      category: "All",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Dress",
      category: "Top Offers",
      price: 234,
      size: 8,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1605763240000-7e93b172d754?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Dress",
      category: "Mobile & Comp",
      price: 234,
      size: 10,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1550639525-c97d455acf70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Dress",
      category: "Electronic",
      price: 234,
      size: 11,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1618932260643-eee4a2f652a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Dress",
      category: "Fashion",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1612336307429-8a898d10e223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";


List<String> imageList = [
  'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
  'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
  'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
  'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
];