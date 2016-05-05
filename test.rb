require_relative 'person'
require_relative 'trainer'
require_relative 'client'

vlad_trainer = Trainer.new('Vlad', 'Skrishevskiy', 31, :male, 0.5)
zhenya_client = Client.new('Zhenya', 'Kurilo', 31, :male, 172, 71)

zhenya_client.measure_body_sizes(88, 70, 93)
zhenya_bmi = vlad_trainer.calc_body_mass_index(zhenya_client)
vlad_trainer.prepare_diet_tips(zhenya_bmi)