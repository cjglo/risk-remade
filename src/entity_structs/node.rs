// again for simplicty sake I made a struct stub to make life easy
struct Item
{

}
// Will remove later


struct Node
{
    next: Option<Box<Node>>,
    prev: Option<Box<Node>>,
    item: Item,
}