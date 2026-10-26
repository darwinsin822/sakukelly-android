.class public interface abstract Lorg/jaudiotagger/utils/tree/TreeNode;
.super Ljava/lang/Object;
.source "TreeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract children()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getAllowsChildren()Z
.end method

.method public abstract getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract getParent()Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getUserObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isLeaf()Z
.end method
