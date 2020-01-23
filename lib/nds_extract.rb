$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.count do
    grand_total = 0
    element_index = 0 
    name = nds[row_index][:name]
    name
        while element_index < nds[row_index][:movies].count do
        grand_total += nds[row_index][:movies][element_index][:worldwide_gross]
        element_index += 1 
        end
  result[name] = grand_total
  row_index += 1
end
 result
end