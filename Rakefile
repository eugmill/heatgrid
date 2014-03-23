require "bundler/gem_tasks"

task :console do
  require 'pry'
  require './lib/heatgrid'
  Pry.start
end

task :generate do
  require 'pry'
  require './lib/heatgrid'
  grid = Heatgrid::Grid.new([
  [1,2,3,4],
  [2,3,4,5],
  [3,4,5,6],
  [4,5,6,7]
  ])
  Pry.start
end
