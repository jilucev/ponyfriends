# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
friend1 = Friend.create(name: 'Wednesday Sparklechrist', age: 26)
friend2 = Friend.create(name: 'Neon Jesus', age: 34)
pony1 = Pony.create(name: 'Queen Hiroshima', breed: 'Japanese Longsnout', color:'violet')
pony2 = Pony.create(name: 'King Tunisia', breed: 'African Spacklehaunch', color:'grey')

magical_power1 = MagicalPower
                  .create(
                    name: 'Disarming Smile',
                    description: 'Disarm any enemy with the power of love',
                    intensity: 3,
                    pony_id: 1
                  )

magical_power2 = MagicalPower
                  .create(name: 'Bear Hug',
                          description: 'No foe will be able to escape your grip unless they use a magical power of greater intensity',
                          intensity: 1,
                          pony_id: 2)

magical_power3 = MagicalPower
                  .create(name: 'Confusing Kiss',
                          description: 'Render your enemy sleepless for two nights',
                          intensity: 2,
                          pony_id: 1)

magical_power4 = MagicalPower
                  .create(name: 'Awkward Joke',
                          description: 'Leave your enemy with a sense of disgust',
                          intensity: 4,
                          pony_id: 2)


ponyfriend1 = pony1.friends << friend1
ponyfriend1.first.save

ponyfriend2 = pony2.friends << friend2
ponyfriend2.save
