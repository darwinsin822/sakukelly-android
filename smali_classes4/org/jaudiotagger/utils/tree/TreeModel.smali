.class public interface abstract Lorg/jaudiotagger/utils/tree/TreeModel;
.super Ljava/lang/Object;
.source "TreeModel.java"


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
.method public abstract addTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
.end method

.method public abstract getChild(Lorg/jaudiotagger/utils/tree/TreeNode;I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;I)",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getChildCount(Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract getIndexOfChild(Lorg/jaudiotagger/utils/tree/TreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isLeaf(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract removeTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
.end method

.method public abstract valueForPathChanged(Lorg/jaudiotagger/utils/tree/TreePath;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/utils/tree/TreePath<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
