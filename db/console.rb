require("pry")
require_relative('../models/artist')
require_relative('../models/album')

artist1 = Artist.new({
  'name' => 'Childish Gambino'
  })
  artist1.save()

  artist2 = Artist.new({
    'name' => 'Chance the Rapper'
    })
    artist2.save()

    artist3 = Artist.new({
      'name' => 'Vulfpeck'
      })
      artist3.save()

      artist4 = Artist.new({
        'name' => 'TWICE'
        })
        artist4.save()


album1 = Album.new({
  'title' => 'Awaken, My Love',
  'genre' => 'Prince',
  'artist_id' => artist1.id
  })
  album1.save()

  album2 = Album.new({
    'title' => 'Acid Rap',
    'genre' => 'Hip-hop',
    'artist_id' => artist2.id
    })
    album2.save()

    album3 = Album.new({
      'title' => 'Mr Finish Line',
      'genre' => 'Funk/Soul',
      'artist_id' => artist3.id
      })
      album3.save()

      album4 = Album.new({
        'title' => 'Heart Shaker',
        'genre' => 'K-pop',
        'artist_id' => artist4.id
        })
        album4.save()

        album5 = Album.new({
          'title' => 'Kuaui',
          'genre' => 'Hip-hop',
          'artist_id' => artist1.id
          })
          album5.save()

          album6 = Album.new({
            'title' => 'Coloring Book',
            'genre' => 'Hip-hop',
            'artist_id' => artist2.id
            })
            album6.save()

            album1.artist()

            artist2.album()




            binding.pry
            nil
