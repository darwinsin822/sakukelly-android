.class Lcom/sakukelly/music/ui/PlaylistHelper$4$1$5;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$5;->val$dialog:Landroidx/appcompat/app/AlertDialog;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$5;->val$dialog:Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V
    return-void
.end method
