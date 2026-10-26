.class public Lorg/jaudiotagger/utils/tree/TreePath;
.super Ljava/lang/Object;
.source "TreePath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4ca0411bb72465ecL


# instance fields
.field private transient lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parentPath:Lorg/jaudiotagger/utils/tree/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path in TreePath must be non null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/jaudiotagger/utils/tree/TreePath;Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 94
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 95
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path in TreePath must be non null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 66
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 68
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 69
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 70
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {v0, p1, v2}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Lorg/jaudiotagger/utils/tree/TreeNode;I)V

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path in TreePath must be non null and not empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>([Lorg/jaudiotagger/utils/tree/TreeNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, -0x1

    .line 103
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 105
    new-instance p2, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {p2, p1, v0}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Lorg/jaudiotagger/utils/tree/TreeNode;I)V

    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    :cond_0
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

    .line 316
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 318
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    .line 320
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lastPathComponent"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

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

    .line 302
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 304
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 305
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-eqz v1, :cond_0

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "lastPathComponent"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 310
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 197
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/utils/tree/TreePath;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 199
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreePath;

    .line 201
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_3

    .line 204
    iget-object v3, v1, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    iget-object v4, p1, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 208
    :cond_2
    iget-object p1, p1, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 203
    iget-object v1, v1, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getLastPathComponent()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    return-object v0
.end method

.method public getParentPath()Lorg/jaudiotagger/utils/tree/TreePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    return-object v0
.end method

.method public getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 130
    new-array v0, v0, [Lorg/jaudiotagger/utils/tree/TreeNode;

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 133
    iget-object v4, v2, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    aput-object v4, v0, v1

    .line 132
    iget-object v2, v2, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPathComponent(I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    move-object v1, p0

    :goto_0
    if-eq v0, p1, :cond_0

    .line 181
    iget-object v1, v1, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, v1, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    return-object p1

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is out of the specified range"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathCount()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 156
    iget-object v1, v1, Lorg/jaudiotagger/utils/tree/TreePath;->parentPath:Lorg/jaudiotagger/utils/tree/TreePath;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreePath;->lastPathComponent:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDescendant(Lorg/jaudiotagger/utils/tree/TreePath;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;)Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 246
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    .line 247
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v2

    if-ge v2, v1, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v2, -0x1

    if-le v2, v1, :cond_2

    .line 253
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/TreePath;->getParentPath()Lorg/jaudiotagger/utils/tree/TreePath;

    move-result-object p1

    move v2, v0

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/TreePath;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public pathByAddingChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {v0, p0, p1}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>(Lorg/jaudiotagger/utils/tree/TreePath;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-object v0

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null child not allowed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    .line 293
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_0
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/utils/tree/TreePath;->getPathComponent(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
