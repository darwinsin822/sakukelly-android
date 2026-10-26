.class public Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
.super Ljava/lang/Object;
.source "DefaultTreeModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jaudiotagger/utils/tree/TreeModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/jaudiotagger/utils/tree/TreeModel<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b54676a1e8b591L


# instance fields
.field protected asksAllowsChildren:Z

.field protected listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

.field protected root:Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;-><init>(Lorg/jaudiotagger/utils/tree/TreeNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/utils/tree/TreeNode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    .line 88
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 89
    iput-boolean p2, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;)V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 593
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 594
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 597
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 598
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 661
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    .line 663
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "root"

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 647
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 649
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-eqz v1, :cond_0

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 650
    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 651
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 653
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public asksAllowsChildren()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return v0
.end method

.method protected fireTreeNodesChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 473
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 474
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 477
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 479
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeNodesInserted(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 504
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 505
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 508
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 510
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesInserted(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeNodesRemoved(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 535
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 536
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 539
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 541
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesRemoved(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeStructureChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 566
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 567
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 570
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 572
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getChild(Lorg/jaudiotagger/utils/tree/TreeNode;I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;I)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 163
    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation

    .line 175
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildCount()I

    move-result p1

    return p1
.end method

.method public getIndexOfChild(Lorg/jaudiotagger/utils/tree/TreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/TreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)[TX;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method protected getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;I)[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 398
    :cond_0
    new-array p1, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 402
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-ne p1, v0, :cond_2

    .line 403
    new-array v0, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_0

    .line 405
    :cond_2
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    .line 406
    :goto_0
    array-length v1, v0

    sub-int/2addr v1, p2

    aput-object p1, v0, v1

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    return-object v0
.end method

.method public getTreeModelListeners()[Lorg/jaudiotagger/utils/tree/TreeModelListener;
    .locals 2

    .line 449
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/utils/tree/TreeModelListener;

    check-cast v0, [Lorg/jaudiotagger/utils/tree/TreeModelListener;

    return-object v0
.end method

.method public insertNodeInto(Lorg/jaudiotagger/utils/tree/MutableTreeNode;Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;I)V"
        }
    .end annotation

    .line 225
    invoke-interface {p2, p1, p3}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    .line 229
    filled-new-array {p3}, [I

    move-result-object p1

    .line 230
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesWereInserted(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    return-void
.end method

.method public isLeaf(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getAllowsChildren()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 192
    :cond_0
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->isLeaf()Z

    move-result p1

    return p1
.end method

.method public nodeChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 261
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 268
    filled-new-array {p1}, [I

    move-result-object p1

    .line 269
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public nodeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    return-void
.end method

.method public nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 331
    array-length v0, p2

    if-lez v0, :cond_2

    .line 335
    new-array v1, v0, [Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 338
    aget v3, p2, v2

    .line 339
    invoke-interface {p1, v3}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 345
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p0, p1, p2, p2}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public nodesWereInserted(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 299
    array-length v0, p2

    .line 301
    new-array v1, v0, [Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 304
    aget v3, p2, v2

    invoke-interface {p1, v3}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_1
    return-void
.end method

.method public nodesWereRemoved(Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->reload(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void
.end method

.method public reload(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :cond_0
    return-void
.end method

.method public removeNodeFromParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 247
    new-array v1, v1, [Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 249
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    .line 250
    aget v4, v2, v3

    invoke-interface {v0, v4}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(I)V

    .line 251
    aput-object p1, v1, v3

    .line 252
    invoke-virtual {p0, v0, v2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesWereRemoved(Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node does not have a parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method public setRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 119
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :goto_0
    return-void
.end method

.method public valueForPathChanged(Lorg/jaudiotagger/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/TreePath;->getLastPathComponent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 213
    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodeChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void
.end method
