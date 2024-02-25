#ifndef CIRCULAR_LIST
#define CIRCULAR_LIST

#include <list>
#include <iterator>
#include <mutex>

/*TODO:Find a way to speate functions implemention to .cpp file 
        while stil implementing template*/
        
template <typename T>
class CircularList
{
private:
    std::list<T> lst;
    mutable std::mutex mtx;
    typename std::list<T>::iterator current;

public:
    CircularList();

    void add(const T &item);
    T next();
    T prev();
    T getCurrent() const;
    bool isEmpty() const;
    size_t size() const;
};

template <typename T>
CircularList<T>::CircularList()
{
    current = lst.begin();
}

template <typename T>
void CircularList<T>::add(const T &item)
{
    std::lock_guard<std::mutex> lock(mtx);
    lst.push_back(item);
    if (lst.size() == 1)
    {
        current = lst.begin();
    }
}

template <typename T>
T CircularList<T>::next()
{
    std::lock_guard<std::mutex> lock(mtx);
    if (lst.empty())
    {
        throw std::runtime_error("List is empty");
    }
    current++;
    if (current == lst.end())
    {
        current = lst.begin();
    }
    return *current;
}

template <typename T>
T CircularList<T>::prev()
{
    std::lock_guard<std::mutex> lock(mtx);
    if (lst.empty())
    {
        throw std::runtime_error("List is empty");
    }
    if (current == lst.begin())
    {
        current = lst.end();
    }
    current--;
    return *current;
}

template <typename T>
T CircularList<T>::getCurrent() const
{
    std::lock_guard<std::mutex> lock(mtx);
    if (lst.empty())
    {
        throw std::runtime_error("List is empty");
    }
    return *current;
}

template <typename T>
bool CircularList<T>::isEmpty() const
{
    std::lock_guard<std::mutex> lock(mtx);
    return lst.empty();
}

template <typename T>
size_t CircularList<T>::size() const
{
    std::lock_guard<std::mutex> lock(mtx);
    return lst.size();
}

#endif