.class public interface abstract Lorg/jaudiotagger/utils/tree/MutableTreeNode;
.super Ljava/lang/Object;
.source "MutableTreeNode.java"

# interfaces
.implements Lorg/jaudiotagger/utils/tree/TreeNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jaudiotagger/utils/tree/TreeNode<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract remove(I)V
.end method

.method public abstract remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract removeFromParent()V
.end method

.method public abstract setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/MutableTreeNode<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setUserObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
