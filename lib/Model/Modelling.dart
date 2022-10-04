
// List ProductModelFromJson(String str) =>
//     List.from(json.decode(str).map((x) => ProductModel.fromJson(x)));
//
// String ProductModelToJson(List<ProductModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  final int id;
  final String brand;
  final String name;
  final String price;
  //final Null priceSign;
 // final Null currency;
  final String imageLink;
  final String productLink;
  final String websiteLink;
  final String description;
  // final double rating;
  final String productType;
 // final List<Null> tagList;
  final String createdAt;
  final String updatedAt;
  final String productApiUrl;
  final String apiFeaturedImage;
 // final List<Null> productColors;

  ProductModel(
      {required this.id,
      required this.brand,
      required this.name,
      required this.price,
     // this.priceSign,
     // this.currency,
      required this.imageLink,
      required this.productLink,
      required this.websiteLink,
      required this.description,
      // required this.rating,
      required this.productType,
    //  required this.tagList,
      required this.createdAt,
      required this.updatedAt,
      required this.productApiUrl,
      required this.apiFeaturedImage,
    //  required this.productColors
    });

  factory ProductModel.fromJson( Map<String ,dynamic> json) {
    return ProductModel(
      id: json['id'],
      brand: json['brand'],
      name: json['name'],
      price: json['price'],
    //  priceSign: json['price_sign'],
    //  currency: json['currency'],
      imageLink: json['image_link'],
      productLink: json['product_link'],
      websiteLink: json['website_link'],
      description: json['description'],
      // rating: json['rating'],
      productType: json['product_type'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      productApiUrl: json['product_api_url'],
      apiFeaturedImage: json['api_featured_image'],
    //  productColors: [],
    //  tagList: [],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic>? data;
    data!['id'] = id;
    data['brand'] = brand;
    data['name'] = name;
    data['price'] = price;
   // data['price_sign'] = priceSign;
   // data['currency'] = currency;
    data['image_link'] = imageLink;
    data['product_link'] = productLink;
    data['website_link'] = websiteLink;
    data['description'] = description;
    // data['rating'] = rating;
    data['product_type'] = productType;

    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['product_api_url'] = productApiUrl;
    data['api_featured_image'] = apiFeaturedImage;
 //   if (productColors != null) {
      // data['product_colors'] =
      // this.productColors!.map((v) => v.toJson()).toList();
   // }
    return data;
  }
}
