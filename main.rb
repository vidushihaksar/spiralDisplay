n = gets.chomp.to_i;
m =gets.chomp.to_i;


a = [];
for i in (0.. n- 1)
    row = []
    for j in (0..m - 1)
        val = gets.chomp.to_i;
        row.push(val)
    end
    a.push(row)
end
puts "************************"


def spiral(a)
  rowMin=0 
  rowMax = a.length-1
  colMin=0
  colMax = a[0].length-1;
  count =0;
        
  while(count < a.length*a[0].length)
            
    # leftwall
    for i in (rowMin..rowMax)
      print a[i][colMin].to_s+" ";
      count+=1;
    end
            
    colMin+=1;
    # bottom wall
    for i in (colMin..colMax)
      if(count < a.length*a[0].length)
        print a[rowMax][i].to_s+" ";
        count+=1;
      end
    end
            
    rowMax-=1;
    # right wall
    for i in (rowMax).downto(rowMin)
      if(count < a.length*a[0].length)
        print a[i][colMax].to_s+" ";
        count+=1;
      end
    end
            
            
    colMax-=1;
    # top wall
    for i in (colMax).downto(colMin)
      if(count < a.length*a[0].length)
        print a[rowMin][i].to_s+" ";
        count+=1;
      end
    end
        
    rowMin+=1;
  end
        
end

spiral(a);
