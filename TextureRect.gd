extends TextureRect

var original_texture
var pieces = []

func _ready():
	original_texture = preload("res://assets/puzzle/d0ebf3e902292323dbbba384d87c1aec39b9e71f_hq.jpg") # Substitua pelo caminho da sua imagem
	create_pieces(4, 4)
	show_pieces() # Especifique o número de peças na horizontal e vertical
func create_pieces(cols, rows):
	var piece_width = original_texture.get_width() / cols
	var piece_height = original_texture.get_height() / rows

	for y in range(rows):
		for x in range(cols):
			var piece = ImageTexture.new()
			var rect = Rect2(x * piece_width, y * piece_height, piece_width, piece_height)
			var piece_image = original_texture.get_load_path().get_rect(rect).duplicate()
			piece.create_from_image(piece_image)
			pieces.append(piece)

func show_pieces():
	var cols = 4 # Mesmo número usado em create_pieces
	for y in range(cols):
		for x in range(cols):
			var index = y * cols + x
			var piece_sprite = TextureRect.new()
			piece_sprite.texture = pieces[index]
			piece_sprite.rect_min_size = Vector2(pieces[index].get_width(), pieces[index].get_height())
			add_child(piece_sprite)
			piece_sprite.rect_position = Vector2(x * piece_sprite.rect_min_size.x, y * piece_sprite.rect_min_size.y)
