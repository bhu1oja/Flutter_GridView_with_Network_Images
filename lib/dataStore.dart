class Store{
  String itemName;
  double itemPrice;
  String itemImage;
  Store.items({
    this.itemImage,
    this.itemName,
    this.itemPrice,
});
}

List<Store> storeItems =[

  Store.items(
      itemName: "Google",
      itemImage: "https://goo.gl/bYJBPJ",
      ),
 Store.items(
      itemName: "Flutter",
      itemImage: "https://goo.gl/Du8giw",
      ),

  Store.items(
      itemName: "Android",
      itemImage: "https://goo.gl/vCn5r5",
      ),

  Store.items(
      itemName: "Youtube",
      itemImage: "https://goo.gl/cGP6cH",
      ),
Store.items(
      itemName: "GitHub",
      itemImage: "https://goo.gl/u2qZQB",
      ),


  
];