.class public Lorg/jaudiotagger/utils/tree/TreeModelEvent;
.super Ljava/util/EventObject;
.source "TreeModelEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/EventObject;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfc0ba82c1ea5ca4L


# instance fields
.field protected childIndices:[I

.field protected children:[Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected path:Lorg/jaudiotagger/utils/tree/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 196
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    const/4 p1, 0x0

    .line 197
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;[I[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 144
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 145
    iput-object p3, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 146
    iput-object p4, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Lorg/jaudiotagger/utils/tree/TreeNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Lorg/jaudiotagger/utils/tree/TreeNode;)V

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lorg/jaudiotagger/utils/tree/TreeNode;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1
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

    .line 118
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Lorg/jaudiotagger/utils/tree/TreeNode;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;[I[Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void
.end method


# virtual methods
.method public getChildIndices()[I
    .locals 4

    .line 265
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    if-eqz v0, :cond_0

    .line 266
    array-length v1, v0

    .line 267
    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 269
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildren()[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Lorg/jaudiotagger/utils/tree/TreeNode;

    if-eqz v0, :cond_0

    .line 244
    array-length v1, v0

    .line 246
    new-array v2, v1, [Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 v3, 0x0

    .line 248
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

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

    .line 226
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTreePath()Lorg/jaudiotagger/utils/tree/TreePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    if-eqz v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    const-string v3, "]"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 289
    const-string v1, " indices [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v4

    .line 290
    :goto_0
    iget-object v5, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Lorg/jaudiotagger/utils/tree/TreeNode;

    if-eqz v1, :cond_4

    .line 295
    const-string v1, " children [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :goto_1
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Lorg/jaudiotagger/utils/tree/TreeNode;

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Lorg/jaudiotagger/utils/tree/TreeNode;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
