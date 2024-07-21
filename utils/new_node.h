#ifndef NEW_NODE_H
#define NEW_NODE_H

#include <godot_cpp/classes/node.hpp>

class NewNode : public godot::Node {
    GDCLASS(NewNode, Node)

    protected:
        static void _bind_methods();

    public:
};

#endif
