class DataService

  def get_all_tales_from_db(width, timestamp)
    all_tales = AllTales.where(timestamp: timestamp)
    amount_cards_in_row = (width / 400).to_i + 1
    tales = Array.new((all_tales.length / amount_cards_in_row).to_i + 1) { Array.new }
    col = 0
    all_tales.each do |tale|
      author_info = Users.where(id: tale["user_id"].to_i).first
      story_picture = TableTaleData.where(id: tale["id"].to_i).first["bg_pic"]
      tales[(col / amount_cards_in_row).to_i] = tales[(col / amount_cards_in_row).to_i].push({
                   "id" => tale["id"],
                   "title" => tale["title"],
                   "description" => tale["description"],
                   "author_info" => author_info,
                   "col_offset" => col % amount_cards_in_row,
                   "image_src" => story_picture,
                   "cards_row_size" => (12 / amount_cards_in_row).to_i
                 })
      col += 1
    end
    tales
  end

  def get_tale_by_id(id)
    data = TableTaleData.where(id: id).order(created_at: :desc).first
    author_info = Users.where(id: data['author_id'].to_i).first
    glossary = []
    data['grammar'].split(',').each do |phrase_id|
      t = Grammars.where(id: phrase_id.to_i).first
      glossary.push({
                      'phrase' => t['phrase'],
                      'transcription' => t['transcription'],
                      'translation' => t['translation']
                    })
    end
    {
      'id' => data['id'],
      'title' => data['title'],
      'grammar' => glossary,
      'author' => author_info,
      'full_text' => data['full_text'],
      'video_src' => '../../assets/audio/' + data['video_src'],
      'bg_img' => data['bg_pic'],
    }
  end

  def get_grammar_from_db
    Grammars.all
  end
end
