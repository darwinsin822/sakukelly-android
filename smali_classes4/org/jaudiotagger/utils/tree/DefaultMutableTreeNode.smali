.class public Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/jaudiotagger/utils/tree/MutableTreeNode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63da32fc125b2f99L


# instance fields
.field protected allowsChildren:Z

.field protected children:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient userObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 141
    iput-boolean p2, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 142
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public static final emptyEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration<",
            "TX;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$1;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$1;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1293
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1295
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 1297
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "userObject"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1298
    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1278
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/io/Serializable;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 1279
    new-array v2, v2, [Ljava/lang/Object;

    .line 1280
    const-string v3, "userObject"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    .line 1281
    aput-object v0, v2, v1

    goto :goto_0

    .line 1284
    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 1285
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 404
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 405
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    :goto_0
    return-void
.end method

.method public breadthFirstEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 794
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public children()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->clone()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 1257
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    const/4 v1, 0x0

    .line 1260
    iput-object v1, v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 1261
    iput-object v1, v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1265
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public depthFirstEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->postorderEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    return v0
.end method

.method public getChildAfter(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 916
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 922
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 923
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 919
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 913
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    return-object p1

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "node has no children"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildBefore(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 947
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 954
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 950
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 944
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getDepth()I
    .locals 3

    .line 554
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    .line 556
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 564
    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 561
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nodes should be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0

    .line 876
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 1100
    :goto_0
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getFirstChild()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 272
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastChild()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0

    .line 891
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 1120
    :goto_0
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastChild()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLeafCount()I
    .locals 3

    .line 1210
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    .line 1212
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 1214
    invoke-interface {v2}, Lorg/jaudiotagger/utils/tree/TreeNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lt v1, v0, :cond_2

    return v1

    .line 1220
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "tree has zero leaves"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLevel()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    .line 581
    :goto_0
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getNextLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1157
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getFirstLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0

    .line 1159
    :cond_1
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getNextNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 693
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 696
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 703
    :cond_0
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 708
    :cond_1
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 714
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 1026
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAfter(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    :goto_0
    if-eqz v0, :cond_2

    .line 1034
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1035
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getParent()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    return-object v0
.end method

.method public getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
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

    .line 623
    :cond_0
    new-array p1, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 627
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    .line 628
    array-length v1, v0

    sub-int/2addr v1, p2

    aput-object p1, v0, v1

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getPreviousLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1192
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0

    .line 1194
    :cond_1
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 738
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 744
    :cond_1
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildBefore(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    :goto_0
    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1062
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 661
    :goto_0
    invoke-interface {v0}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getSharedAncestor(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 487
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    .line 488
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v2

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    move-object v1, p0

    goto :goto_0

    :cond_2
    sub-int v2, v1, v2

    move-object v1, p1

    move-object p1, p0

    :goto_0
    if-lez v2, :cond_3

    .line 502
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    return-object p1

    .line 515
    :cond_4
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    .line 516
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    if-nez p1, :cond_3

    if-nez p1, :cond_5

    if-nez v1, :cond_5

    return-object v0

    .line 521
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string v0, "nodes should be null"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSiblingCount()I
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1008
    :cond_0
    invoke-interface {v0}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserObjectPath()[Ljava/lang/Object;
    .locals 4

    .line 639
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    .line 640
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 642
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 643
    aget-object v3, v0, v2

    check-cast v3, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 644
    invoke-virtual {v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;I)V"
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 174
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 183
    :cond_0
    invoke-interface {p1, p0}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 184
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new child is an ancestor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new child is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "node does not allow children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLeaf()Z
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :cond_1
    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 440
    :cond_2
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    if-nez v1, :cond_1

    return v0
.end method

.method public isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 859
    :cond_1
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    if-ne p1, p0, :cond_2

    const/4 p1, 0x1

    move v0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isNodeDescendant(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 462
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result p1

    return p1
.end method

.method public isNodeRelated(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    move v0, v1

    goto :goto_0

    .line 982
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 983
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_4

    .line 985
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 986
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 987
    :cond_3
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sibling has different parent"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 676
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pathFromAncestorEnumeration(Lorg/jaudiotagger/utils/tree/TreeNode;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 835
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;

    invoke-direct {v0, p0, p1, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public postorderEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 779
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public preorderEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 762
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .line 201
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 202
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 p1, 0x0

    .line 203
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    return-void
.end method

.method public remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->remove(I)V

    return-void

    .line 377
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAllChildren()V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0, p0}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    :cond_0
    return-void
.end method

.method public setAllowsChildren(Z)V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-eq p1, v0, :cond_0

    .line 307
    iput-boolean p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    if-nez p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->removeAllChildren()V

    :cond_0
    return-void
.end method

.method public setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1238
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1241
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
