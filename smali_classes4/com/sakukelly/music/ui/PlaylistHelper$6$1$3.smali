.class Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 301
    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u25b6 Reproducir desde aqu\u00ed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u274c Quitar de la lista"

    aput-object v2, v0, v1

    .line 306
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;ILcom/sakukelly/music/data/model/Song;)V

    .line 308
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 320
    const-string p2, "Volver"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    .line 322
    return-void
.end method
