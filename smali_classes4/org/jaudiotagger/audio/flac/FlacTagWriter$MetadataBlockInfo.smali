.class Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;
.super Ljava/lang/Object;
.source "FlacTagWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/flac/FlacTagWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataBlockInfo"
.end annotation


# instance fields
.field private blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockApplication:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockCueSheet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private metadataBlockSeekTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation
.end field

.field private streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->blocks:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockPadding:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    return-object p0
.end method

.method static synthetic access$102(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockPadding:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->getOtherBlockCount(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result p0

    return p0
.end method

.method private getOtherBlockCount(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 2

    .line 119
    iget-object v0, p1, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    iget-object v1, p1, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    iget-object p1, p1, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public computeAvailableRoom()I
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 134
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 139
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 144
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockPadding:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 150
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_3
    return v1
.end method

.method public computeNeededRoom()I
    .locals 3

    .line 164
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 166
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 172
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 177
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    return v1
.end method

.method public getListOfNonMetadataBlocks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 94
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->blocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 99
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->blocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 104
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->blocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_2
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->blocks:Ljava/util/List;

    return-object v0
.end method
