classdef Node

    properties
        next
        previous
        data
    end

    methods
        function [node] = Node(newData)
            node.data = newData;
        end
        function set.next(node,next)
            node.next = next;
        end
        function [node] = get.next(node)
            node = node.next;
        end
        function set.data(node,newData)
            node.data = newData;
        end
        function [node] = get.data(node)
            node = node.data;
        end
        function set.previous(node,prev)
            node.previous = prev;
        end
        function[node]= get.previous(node)
            node = node.previous;
        end
    end

end