# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Collection.delete_all
CollectionsNote.delete_all
Note.delete_all
notes = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E','F', 'F#', 'G', 'G#']

scales = [
    {:name => 'C Major', :notes => ['C', 'D', 'E', 'F', 'G', 'A', 'B']}, 
    {:name => 'C# Major', :notes => ['C#', 'D#', 'F', 'F#', 'G#', 'A#', 'C']}, 
    {:name => 'D Major', :notes => ['D', 'E', 'F#', 'G', 'A', 'B', 'C#']},
    {:name => 'D# Major', :notes => ['D#', 'F', 'G', 'G#', 'A#', 'C', 'D']}, 
    {:name => 'E Major', :notes => ['E', 'F#', 'G#', 'A', 'B', 'C#', 'D#']}, 
    {:name => 'F Major', :notes => ['F', 'G', 'A', 'A#', 'C', 'D', 'E']}, 
    {:name => 'F# Major', :notes => ['F#', 'G#', 'A#', 'B', 'C#', 'D#', 'F']},
    {:name => 'G Major', :notes => ['G', 'A', 'B', 'C', 'D', 'E', 'F#']}, 
    {:name => 'G# Major', :notes => ['G#', 'A#', 'C', 'C#', 'D#', 'F', 'G']}, 
    {:name => 'A Major', :notes => ['A', 'B', 'C#', 'D', 'E', 'F#', 'G#']},  
    {:name => 'A# Major', :notes => ['A#', 'C', 'D', 'D#', 'F', 'G', 'A']},  
    {:name => 'B Major', :notes => ['B', 'C#', 'D#', 'E', 'F#', 'G#', 'A#']},

    {:name => 'C Minor', :notes => ['C', 'D', 'D#', 'F', 'G', 'G#', 'A#']}, 
    {:name => 'C# Minor', :notes => ['C#', 'D#', 'E', 'F#', 'G#', 'A', 'B']}, 
    {:name => 'D Minor', :notes => ['D', 'E', 'F', 'G', 'A', 'A#', 'C']}, 
    {:name => 'D# Minor', :notes => ['D#', 'F', 'F#', 'G#', 'A#', 'B', 'C#']}, 
    {:name => 'E Minor', :notes => ['E', 'F#', 'G', 'A', 'B', 'C', 'D']}, 
    {:name => 'F Minor', :notes => ['F', 'G', 'G#', 'A#', 'C', 'C#', 'D#']}, 
    {:name => 'F# Minor', :notes => ['F#', 'G#', 'A', 'B', 'C#', 'D', 'E']},
    {:name => 'G Minor', :notes => ['G', 'A', 'A#', 'C', 'D', 'D#', 'F']}, 
    {:name => 'G# Minor', :notes => ['G#', 'A#', 'B', 'C#', 'D#', 'E', 'F#']}, 
    {:name => 'A Minor', :notes => ['A', 'B', 'C', 'D', 'E', 'F', 'G']}, 
    {:name => 'A# Minor', :notes => ['A#', 'C', 'C#', 'D#', 'F', 'F#', 'G#']}, 
    {:name => 'B Minor', :notes => ['B', 'C#', 'D', 'E', 'F#', 'G', 'A']},

    {:name => 'C Minor Pentatonic', :notes => ['C', 'D#', 'F', 'G', 'A#']}, 
    {:name => 'C# Minor Pentatonic', :notes => ['C#', 'E', 'F#', 'G#', 'B']}, 
    {:name => 'D Minor Pentatonic', :notes => ['D', 'F', 'G', 'A', 'C']}, 
    {:name => 'D# Minor Pentatonic', :notes => ['D#', 'F#', 'G#', 'A#', 'C#']}, 
    {:name => 'E Minor Pentatonic', :notes => ['E', 'G', 'A', 'B', 'D']}, 
    {:name => 'F Minor Pentatonic', :notes => ['F', 'G#', 'A#', 'C', 'D#']}, 
    {:name => 'F# Minor Pentatonic', :notes => ['F#', 'A', 'B', 'C#', 'E']},
    {:name => 'G Minor Pentatonic', :notes => ['G', 'A#', 'C', 'D', 'F']}, 
    {:name => 'G# Minor Pentatonic', :notes => ['G#', 'B', 'C#', 'D#', 'F#']}, 
    {:name => 'A Minor Pentatonic', :notes => ['A', 'C', 'D', 'E', 'G']}, 
    {:name => 'A# Minor Pentatonic', :notes => ['A#', 'C#', 'D#', 'F', 'G#']}, 
    {:name => 'B Minor Pentatonic', :notes => ['B', 'D', 'E', 'F#', 'A']},

    {:name => 'C Major Pentatonic', :notes => ['C', 'D', 'E', 'G', 'A']}, 
    {:name => 'C# Major Pentatonic', :notes => ['C#', 'D#', 'F', 'G#', 'A#']}, 
    {:name => 'D Major Pentatonic', :notes => ['D', 'E', 'F#', 'A', 'B']},
    {:name => 'D# Major Pentatonic', :notes => ['D#', 'F', 'G', 'A#', 'C']}, 
    {:name => 'E Major Pentatonic', :notes => ['E', 'F#', 'G#', 'B', 'C#']}, 
    {:name => 'F Major Pentatonic', :notes => ['F', 'G', 'A', 'C', 'D']}, 
    {:name => 'F# Major Pentatonic', :notes => ['F#', 'G#', 'A#', 'C#', 'D#']},
    {:name => 'G Major Pentatonic', :notes => ['G', 'A', 'B', 'D', 'E']}, 
    {:name => 'G# Major Pentatonic', :notes => ['G#', 'A#', 'C', 'D#', 'F']}, 
    {:name => 'A Major Pentatonic', :notes => ['A', 'B', 'C#', 'E', 'F#']},  
    {:name => 'A# Major Pentatonic', :notes => ['A#', 'C', 'D', 'F', 'G']},  
    {:name => 'B Major Pentatonic', :notes => ['B', 'C#', 'D#', 'F#', 'G#']},
]

notes.each do |note|
    Note.create(name: note)
end

scales.each do |scale|
    Collection.create(scale_name: scale[:name], is_scale: true)
end

scales.each do |scale_hash|
    col = Collection.find_by(scale_name: scale_hash[:name])
    scale_hash[:notes].each do |note|
        n = Note.find_by(name: "#{note}")
        CollectionsNote.create(note_id: n.id, collection_id: col.id)
    end
end