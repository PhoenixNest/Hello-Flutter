class HomeModel {
	int _total;
	int _totalHits;
	List<Hits> _hits;

	HomeModel({int total, int totalHits, List<Hits> hits}) {
		this._total = total;
		this._totalHits = totalHits;
		this._hits = hits;
	}

	int get total => _total;
	set total(int total) => _total = total;
	int get totalHits => _totalHits;
	set totalHits(int totalHits) => _totalHits = totalHits;
	List<Hits> get hits => _hits;
	set hits(List<Hits> hits) => _hits = hits;

	HomeModel.fromJson(Map<String, dynamic> json) {
		_total = json['total'];
		_totalHits = json['totalHits'];
		if (json['hits'] != null) {
			_hits = new List<Hits>();
			json['hits'].forEach((v) {
				_hits.add(new Hits.fromJson(v));
			});
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this._total;
		data['totalHits'] = this._totalHits;
		if (this._hits != null) {
			data['hits'] = this._hits.map((v) => v.toJson()).toList();
		}
		return data;
	}
}

class Hits {
	int _id;
	String _pageURL;
	String _type;
	String _tags;
	String _previewURL;
	int _previewWidth;
	int _previewHeight;
	String _webformatURL;
	int _webformatWidth;
	int _webformatHeight;
	String _largeImageURL;
	int _imageWidth;
	int _imageHeight;
	int _imageSize;
	int _views;
	int _downloads;
	int _favorites;
	int _likes;
	int _comments;
	int _userId;
	String _user;
	String _userImageURL;

	Hits(
			{int id,
				String pageURL,
				String type,
				String tags,
				String previewURL,
				int previewWidth,
				int previewHeight,
				String webformatURL,
				int webformatWidth,
				int webformatHeight,
				String largeImageURL,
				int imageWidth,
				int imageHeight,
				int imageSize,
				int views,
				int downloads,
				int favorites,
				int likes,
				int comments,
				int userId,
				String user,
				String userImageURL}) {
		this._id = id;
		this._pageURL = pageURL;
		this._type = type;
		this._tags = tags;
		this._previewURL = previewURL;
		this._previewWidth = previewWidth;
		this._previewHeight = previewHeight;
		this._webformatURL = webformatURL;
		this._webformatWidth = webformatWidth;
		this._webformatHeight = webformatHeight;
		this._largeImageURL = largeImageURL;
		this._imageWidth = imageWidth;
		this._imageHeight = imageHeight;
		this._imageSize = imageSize;
		this._views = views;
		this._downloads = downloads;
		this._favorites = favorites;
		this._likes = likes;
		this._comments = comments;
		this._userId = userId;
		this._user = user;
		this._userImageURL = userImageURL;
	}

	int get id => _id;
	set id(int id) => _id = id;
	String get pageURL => _pageURL;
	set pageURL(String pageURL) => _pageURL = pageURL;
	String get type => _type;
	set type(String type) => _type = type;
	String get tags => _tags;
	set tags(String tags) => _tags = tags;
	String get previewURL => _previewURL;
	set previewURL(String previewURL) => _previewURL = previewURL;
	int get previewWidth => _previewWidth;
	set previewWidth(int previewWidth) => _previewWidth = previewWidth;
	int get previewHeight => _previewHeight;
	set previewHeight(int previewHeight) => _previewHeight = previewHeight;
	String get webformatURL => _webformatURL;
	set webformatURL(String webformatURL) => _webformatURL = webformatURL;
	int get webformatWidth => _webformatWidth;
	set webformatWidth(int webformatWidth) => _webformatWidth = webformatWidth;
	int get webformatHeight => _webformatHeight;
	set webformatHeight(int webformatHeight) =>
			_webformatHeight = webformatHeight;
	String get largeImageURL => _largeImageURL;
	set largeImageURL(String largeImageURL) => _largeImageURL = largeImageURL;
	int get imageWidth => _imageWidth;
	set imageWidth(int imageWidth) => _imageWidth = imageWidth;
	int get imageHeight => _imageHeight;
	set imageHeight(int imageHeight) => _imageHeight = imageHeight;
	int get imageSize => _imageSize;
	set imageSize(int imageSize) => _imageSize = imageSize;
	int get views => _views;
	set views(int views) => _views = views;
	int get downloads => _downloads;
	set downloads(int downloads) => _downloads = downloads;
	int get favorites => _favorites;
	set favorites(int favorites) => _favorites = favorites;
	int get likes => _likes;
	set likes(int likes) => _likes = likes;
	int get comments => _comments;
	set comments(int comments) => _comments = comments;
	int get userId => _userId;
	set userId(int userId) => _userId = userId;
	String get user => _user;
	set user(String user) => _user = user;
	String get userImageURL => _userImageURL;
	set userImageURL(String userImageURL) => _userImageURL = userImageURL;

	Hits.fromJson(Map<String, dynamic> json) {
		_id = json['id'];
		_pageURL = json['pageURL'];
		_type = json['type'];
		_tags = json['tags'];
		_previewURL = json['previewURL'];
		_previewWidth = json['previewWidth'];
		_previewHeight = json['previewHeight'];
		_webformatURL = json['webformatURL'];
		_webformatWidth = json['webformatWidth'];
		_webformatHeight = json['webformatHeight'];
		_largeImageURL = json['largeImageURL'];
		_imageWidth = json['imageWidth'];
		_imageHeight = json['imageHeight'];
		_imageSize = json['imageSize'];
		_views = json['views'];
		_downloads = json['downloads'];
		_favorites = json['favorites'];
		_likes = json['likes'];
		_comments = json['comments'];
		_userId = json['user_id'];
		_user = json['user'];
		_userImageURL = json['userImageURL'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this._id;
		data['pageURL'] = this._pageURL;
		data['type'] = this._type;
		data['tags'] = this._tags;
		data['previewURL'] = this._previewURL;
		data['previewWidth'] = this._previewWidth;
		data['previewHeight'] = this._previewHeight;
		data['webformatURL'] = this._webformatURL;
		data['webformatWidth'] = this._webformatWidth;
		data['webformatHeight'] = this._webformatHeight;
		data['largeImageURL'] = this._largeImageURL;
		data['imageWidth'] = this._imageWidth;
		data['imageHeight'] = this._imageHeight;
		data['imageSize'] = this._imageSize;
		data['views'] = this._views;
		data['downloads'] = this._downloads;
		data['favorites'] = this._favorites;
		data['likes'] = this._likes;
		data['comments'] = this._comments;
		data['user_id'] = this._userId;
		data['user'] = this._user;
		data['userImageURL'] = this._userImageURL;
		return data;
	}
}
